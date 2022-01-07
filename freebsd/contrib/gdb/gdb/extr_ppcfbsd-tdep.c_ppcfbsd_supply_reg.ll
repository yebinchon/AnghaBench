; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_supply_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_supply_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@REG_LR_OFFSET = common dso_local global i32 0, align 4
@REG_CR_OFFSET = common dso_local global i32 0, align 4
@REG_XER_OFFSET = common dso_local global i32 0, align 4
@REG_CTR_OFFSET = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@REG_PC_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppcfbsd_supply_reg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @current_gdbarch, align 4
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %10 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %15 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %38

25:                                               ; preds = %22, %18
  %26 = load i32, i32* @current_regcache, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %31 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = call i32 @REG_FIXREG_OFFSET(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %28, i64 %35
  %37 = call i32 @regcache_raw_supply(i32 %26, i32 %27, i8* %36)
  br label %38

38:                                               ; preds = %25, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %45 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %61

51:                                               ; preds = %48, %42
  %52 = load i32, i32* @current_regcache, align 4
  %53 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %54 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @REG_LR_OFFSET, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 @regcache_raw_supply(i32 %52, i32 %55, i8* %59)
  br label %61

61:                                               ; preds = %51, %48
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %64 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %80

70:                                               ; preds = %67, %61
  %71 = load i32, i32* @current_regcache, align 4
  %72 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %73 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* @REG_CR_OFFSET, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i32 @regcache_raw_supply(i32 %71, i32 %74, i8* %78)
  br label %80

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %83 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %99

89:                                               ; preds = %86, %80
  %90 = load i32, i32* @current_regcache, align 4
  %91 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %92 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* @REG_XER_OFFSET, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = call i32 @regcache_raw_supply(i32 %90, i32 %93, i8* %97)
  br label %99

99:                                               ; preds = %89, %86
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %102 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %118

108:                                              ; preds = %105, %99
  %109 = load i32, i32* @current_regcache, align 4
  %110 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %111 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %3, align 8
  %114 = load i32, i32* @REG_CTR_OFFSET, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = call i32 @regcache_raw_supply(i32 %109, i32 %112, i8* %116)
  br label %118

118:                                              ; preds = %108, %105
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @PC_REGNUM, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %133

125:                                              ; preds = %122, %118
  %126 = load i32, i32* @current_regcache, align 4
  %127 = load i32, i32* @PC_REGNUM, align 4
  %128 = load i8*, i8** %3, align 8
  %129 = load i32, i32* @REG_PC_OFFSET, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = call i32 @regcache_raw_supply(i32 %126, i32 %127, i8* %131)
  br label %133

133:                                              ; preds = %125, %122
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @regcache_raw_supply(i32, i32, i8*) #1

declare dso_local i32 @REG_FIXREG_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
