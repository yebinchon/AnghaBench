; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-tdep.c_ppcnbsd_supply_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-tdep.c_ppcnbsd_supply_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32, i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@REG_LR_OFFSET = common dso_local global i32 0, align 4
@REG_CR_OFFSET = common dso_local global i32 0, align 4
@REG_XER_OFFSET = common dso_local global i32 0, align 4
@REG_CTR_OFFSET = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@REG_PC_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppcnbsd_supply_reg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @current_gdbarch, align 4
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 31
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @REG_FIXREG_OFFSET(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = call i32 @supply_register(i32 %20, i8* %25)
  br label %27

27:                                               ; preds = %19, %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %34 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %49

40:                                               ; preds = %37, %31
  %41 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %42 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* @REG_LR_OFFSET, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = call i32 @supply_register(i32 %43, i8* %47)
  br label %49

49:                                               ; preds = %40, %37
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %52 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %67

58:                                               ; preds = %55, %49
  %59 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %60 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* @REG_CR_OFFSET, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @supply_register(i32 %61, i8* %65)
  br label %67

67:                                               ; preds = %58, %55
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %70 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %85

76:                                               ; preds = %73, %67
  %77 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %78 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* @REG_XER_OFFSET, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i32 @supply_register(i32 %79, i8* %83)
  br label %85

85:                                               ; preds = %76, %73
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %88 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %103

94:                                               ; preds = %91, %85
  %95 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %96 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* @REG_CTR_OFFSET, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = call i32 @supply_register(i32 %97, i8* %101)
  br label %103

103:                                              ; preds = %94, %91
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @PC_REGNUM, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %117

110:                                              ; preds = %107, %103
  %111 = load i32, i32* @PC_REGNUM, align 4
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* @REG_PC_OFFSET, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = call i32 @supply_register(i32 %111, i8* %115)
  br label %117

117:                                              ; preds = %110, %107
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @REG_FIXREG_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
