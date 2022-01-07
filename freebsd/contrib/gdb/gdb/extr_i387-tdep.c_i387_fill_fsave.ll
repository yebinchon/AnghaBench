; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_fill_fsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_fill_fsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i64 }

@current_regcache = common dso_local global %struct.regcache* null, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@I386_ST0_REGNUM = common dso_local global i64 0, align 8
@I387_XMM0_REGNUM = common dso_local global i32 0, align 4
@I387_FCTRL_REGNUM = common dso_local global i32 0, align 4
@I387_FIOFF_REGNUM = common dso_local global i32 0, align 4
@I387_FOOFF_REGNUM = common dso_local global i32 0, align 4
@I387_FOP_REGNUM = common dso_local global i32 0, align 4
@I387_ST0_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_fill_fsave(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regcache*, align 8
  %6 = alloca %struct.gdbarch_tdep*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  store %struct.regcache* %10, %struct.regcache** %5, align 8
  %11 = load i32, i32* @current_gdbarch, align 4
  %12 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %11)
  store %struct.gdbarch_tdep* %12, %struct.gdbarch_tdep** %6, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %15 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @I386_ST0_REGNUM, align 8
  %18 = icmp sge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @gdb_assert(i32 %19)
  %21 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %22 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %88, %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @I387_XMM0_REGNUM, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %91

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %87

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @I387_FCTRL_REGNUM, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @I387_FIOFF_REGNUM, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @I387_FOOFF_REGNUM, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load %struct.regcache*, %struct.regcache** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %52 = call i32 (%struct.regcache*, i32, ...) @regcache_raw_collect(%struct.regcache* %49, i32 %50, i8* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @I387_FOP_REGNUM, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %48
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 7
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %57, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32* @FSAVE_ADDR(i8* %62, i32 %63)
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -8
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %67
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  br label %73

73:                                               ; preds = %56, %48
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32* @FSAVE_ADDR(i8* %74, i32 %75)
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %78 = call i32 @memcpy(i32* %76, i8* %77, i32 2)
  br label %86

79:                                               ; preds = %44, %40, %36
  %80 = load %struct.regcache*, %struct.regcache** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32* @FSAVE_ADDR(i8* %82, i32 %83)
  %85 = call i32 (%struct.regcache*, i32, ...) @regcache_raw_collect(%struct.regcache* %80, i32 %81, i32* %84)
  br label %86

86:                                               ; preds = %79, %73
  br label %87

87:                                               ; preds = %86, %32
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %25

91:                                               ; preds = %25
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_collect(%struct.regcache*, i32, ...) #1

declare dso_local i32* @FSAVE_ADDR(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
