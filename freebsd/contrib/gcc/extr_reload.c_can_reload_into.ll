; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_can_reload_into.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_can_reload_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recog_data = type { i32 }

@VOIDmode = common dso_local global i32 0, align 4
@recog_data = common dso_local global %struct.recog_data zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @can_reload_into to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_reload_into(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.recog_data, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @REG_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @MEM_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %41

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @gen_rtx_REG(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @gen_rtx_SET(i32 %25, i32 %26, i32 %27)
  %29 = call i32 @make_insn_raw(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = bitcast %struct.recog_data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.recog_data* @recog_data to i8*), i64 4, i1 false)
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @recog_memoized(i32 %31)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @extract_insn(i32 %35)
  %37 = call i32 @constrain_operands(i32 1)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %21
  %39 = bitcast %struct.recog_data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.recog_data* @recog_data to i8*), i8* align 4 %39, i64 4, i1 false)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %20, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @make_insn_raw(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @recog_memoized(i32) #1

declare dso_local i32 @extract_insn(i32) #1

declare dso_local i32 @constrain_operands(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
