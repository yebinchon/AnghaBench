; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_supply_fsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_supply_fsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i64 }

@I386_ST0_REGNUM = common dso_local global i64 0, align 8
@I387_XMM0_REGNUM = common dso_local global i32 0, align 4
@I387_FCTRL_REGNUM = common dso_local global i32 0, align 4
@I387_FIOFF_REGNUM = common dso_local global i32 0, align 4
@I387_FOOFF_REGNUM = common dso_local global i32 0, align 4
@I387_FOP_REGNUM = common dso_local global i32 0, align 4
@I387_ST0_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_supply_fsave(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.regcache*, %struct.regcache** %4, align 8
  %12 = call i32 @get_regcache_arch(%struct.regcache* %11)
  %13 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %12)
  store %struct.gdbarch_tdep* %13, %struct.gdbarch_tdep** %7, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %16 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I386_ST0_REGNUM, align 8
  %19 = icmp sge i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gdb_assert(i32 %20)
  %22 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %23 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %87, %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @I387_XMM0_REGNUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %90

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %33, %30
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.regcache*, %struct.regcache** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @regcache_raw_supply(%struct.regcache* %41, i32 %42, i8* null)
  br label %87

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @I387_FCTRL_REGNUM, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @I387_FIOFF_REGNUM, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @I387_FOOFF_REGNUM, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @FSAVE_ADDR(i8* %58, i32 %59)
  %61 = call i32 @memcpy(i8* %57, i8* %60, i32 2)
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  store i8 0, i8* %63, align 1
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @I387_FOP_REGNUM, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 7
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  br label %73

73:                                               ; preds = %67, %56
  %74 = load %struct.regcache*, %struct.regcache** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %77 = call i32 @regcache_raw_supply(%struct.regcache* %74, i32 %75, i8* %76)
  br label %85

78:                                               ; preds = %52, %48, %44
  %79 = load %struct.regcache*, %struct.regcache** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i8* @FSAVE_ADDR(i8* %81, i32 %82)
  %84 = call i32 @regcache_raw_supply(%struct.regcache* %79, i32 %80, i8* %83)
  br label %85

85:                                               ; preds = %78, %73
  br label %86

86:                                               ; preds = %85, %33
  br label %87

87:                                               ; preds = %86, %40
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %26

90:                                               ; preds = %26
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @get_regcache_arch(%struct.regcache*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @FSAVE_ADDR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
