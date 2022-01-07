; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_write_exp_elt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_write_exp_elt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { %union.exp_element* }
%union.exp_element = type { i32 }

@expout_ptr = common dso_local global i32 0, align 4
@expout_size = common dso_local global i32 0, align 4
@expout = common dso_local global %struct.expression* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_exp_elt(i32 %0) #0 {
  %2 = alloca %union.exp_element, align 4
  %3 = getelementptr inbounds %union.exp_element, %union.exp_element* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @expout_ptr, align 4
  %5 = load i32, i32* @expout_size, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @expout_size, align 4
  %9 = mul nsw i32 %8, 2
  store i32 %9, i32* @expout_size, align 4
  %10 = load %struct.expression*, %struct.expression** @expout, align 8
  %11 = bitcast %struct.expression* %10 to i8*
  %12 = load i32, i32* @expout_size, align 4
  %13 = call i64 @EXP_ELEM_TO_BYTES(i32 %12)
  %14 = add i64 8, %13
  %15 = call i64 @xrealloc(i8* %11, i64 %14)
  %16 = inttoptr i64 %15 to %struct.expression*
  store %struct.expression* %16, %struct.expression** @expout, align 8
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.expression*, %struct.expression** @expout, align 8
  %19 = getelementptr inbounds %struct.expression, %struct.expression* %18, i32 0, i32 0
  %20 = load %union.exp_element*, %union.exp_element** %19, align 8
  %21 = load i32, i32* @expout_ptr, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @expout_ptr, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %union.exp_element, %union.exp_element* %20, i64 %23
  %25 = bitcast %union.exp_element* %24 to i8*
  %26 = bitcast %union.exp_element* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  ret void
}

declare dso_local i64 @xrealloc(i8*, i64) #1

declare dso_local i64 @EXP_ELEM_TO_BYTES(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
