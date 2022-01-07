; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfDelayWriteInternalReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfDelayWriteInternalReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8**, i8** }

@ZM_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_OID_INTERNAL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfDelayWriteInternalReg(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.zsHpPriv*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @ZM_MAX_CMD_SIZE, align 4
  %15 = sdiv i32 %14, 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @zmw_get_wlan_dev(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  store %struct.zsHpPriv* %23, %struct.zsHpPriv** %12, align 8
  %24 = call i32 (...) @zmw_declare_for_critical_section()
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @zmw_enter_critical_section(i32* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %29 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  %32 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %33 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8*, i8** %31, i64 %35
  store i8* %27, i8** %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %39 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %43 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds i8*, i8** %41, i64 %45
  store i8* %37, i8** %47, align 8
  %48 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %49 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @ZM_MAX_CMD_SIZE, align 4
  %53 = sub nsw i32 %52, 4
  %54 = ashr i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %51, %55
  br i1 %56, label %57, label %116

57:                                               ; preds = %3
  %58 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %59 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = shl i64 %61, 3
  %63 = add i64 256, %62
  %64 = inttoptr i64 %63 to i8*
  %65 = getelementptr inbounds i8*, i8** %18, i64 0
  store i8* %64, i8** %65, align 16
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %101, %57
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %70 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %66
  %75 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %76 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %83, 1
  %85 = add nsw i32 1, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %18, i64 %86
  store i8* %82, i8** %87, align 8
  %88 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %89 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 %96, 1
  %98 = add nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %18, i64 %99
  store i8* %95, i8** %100, align 8
  br label %101

101:                                              ; preds = %74
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %66

104:                                              ; preds = %66
  %105 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %106 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @zmw_leave_critical_section(i32* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 %111, 3
  %113 = add nsw i32 4, %112
  %114 = load i32, i32* @ZM_OID_INTERNAL_WRITE, align 4
  %115 = call i32 @zfIssueCmd(i32* %110, i8** %18, i32 %113, i32 %114, i32* null)
  store i32 %115, i32* %11, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %119

116:                                              ; preds = %3
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @zmw_leave_critical_section(i32* %117)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %116, %104
  %120 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zmw_declare_for_critical_section(...) #2

declare dso_local i32 @zmw_enter_critical_section(i32*) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #2

declare dso_local i32 @zfIssueCmd(i32*, i8**, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
