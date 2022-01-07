; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfFlushDelayWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfFlushDelayWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32* }

@ZM_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_OID_INTERNAL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFlushDelayWrite(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zsHpPriv*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @ZM_MAX_CMD_SIZE, align 4
  %11 = sdiv i32 %10, 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @zmw_get_wlan_dev(i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.zsHpPriv*, %struct.zsHpPriv** %18, align 8
  store %struct.zsHpPriv* %19, %struct.zsHpPriv** %8, align 8
  %20 = call i32 (...) @zmw_declare_for_critical_section()
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @zmw_enter_critical_section(i32* %21)
  %23 = load %struct.zsHpPriv*, %struct.zsHpPriv** %8, align 8
  %24 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %85

28:                                               ; preds = %1
  %29 = load %struct.zsHpPriv*, %struct.zsHpPriv** %8, align 8
  %30 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 3
  %34 = add nsw i32 256, %33
  %35 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %34, i32* %35, align 16
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %70, %28
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.zsHpPriv*, %struct.zsHpPriv** %8, align 8
  %39 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %36
  %44 = load %struct.zsHpPriv*, %struct.zsHpPriv** %8, align 8
  %45 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 1
  %54 = add nsw i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %14, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load %struct.zsHpPriv*, %struct.zsHpPriv** %8, align 8
  %58 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 1
  %67 = add nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %14, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %43
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %36

73:                                               ; preds = %36
  %74 = load %struct.zsHpPriv*, %struct.zsHpPriv** %8, align 8
  %75 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @zmw_leave_critical_section(i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 %80, 3
  %82 = add nsw i32 4, %81
  %83 = load i32, i32* @ZM_OID_INTERNAL_WRITE, align 4
  %84 = call i32 @zfIssueCmd(i32* %79, i32* %14, i32 %82, i32 %83, i32* null)
  store i32 %84, i32* %7, align 4
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %88

85:                                               ; preds = %1
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @zmw_leave_critical_section(i32* %86)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %73
  %89 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zmw_declare_for_critical_section(...) #2

declare dso_local i32 @zmw_enter_critical_section(i32*) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #2

declare dso_local i32 @zfIssueCmd(i32*, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
