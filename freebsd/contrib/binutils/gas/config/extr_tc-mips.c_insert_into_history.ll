; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_insert_into_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_insert_into_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mips_cl_insn = type { i32 }

@mips_relax = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@history = common dso_local global %struct.mips_cl_insn* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.mips_cl_insn*)* @insert_into_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_into_history(i32 %0, i32 %1, %struct.mips_cl_insn* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mips_cl_insn*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.mips_cl_insn* %2, %struct.mips_cl_insn** %6, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_relax, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %47

10:                                               ; preds = %3
  %11 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.mips_cl_insn* %11)
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %45, %10
  %14 = load i32, i32* %7, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %20, %21
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %25, i64 %27
  %29 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %29, i64 %33
  %35 = bitcast %struct.mips_cl_insn* %28 to i8*
  %36 = bitcast %struct.mips_cl_insn* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  br label %45

37:                                               ; preds = %18
  %38 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %38, i64 %40
  %42 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %6, align 8
  %43 = bitcast %struct.mips_cl_insn* %41 to i8*
  %44 = bitcast %struct.mips_cl_insn* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  br label %45

45:                                               ; preds = %37, %24
  br label %13

46:                                               ; preds = %13
  br label %47

47:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.mips_cl_insn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
