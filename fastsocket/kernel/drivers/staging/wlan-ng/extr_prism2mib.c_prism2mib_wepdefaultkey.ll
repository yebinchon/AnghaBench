; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_wepdefaultkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_wepdefaultkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MIB_TMP_MAXLEN = common dso_local global i32 0, align 4
@HFA384x_RID_CNFWEP128DEFAULTKEY_LEN = common dso_local global i32 0, align 4
@HFA384x_RID_CNFWEPDEFAULTKEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*, i8*)* @prism2mib_wepdefaultkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2mib_wepdefaultkey(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %14, align 8
  %20 = load i32, i32* @MIB_TMP_MAXLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %48

27:                                               ; preds = %6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 5
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @HFA384x_RID_CNFWEP128DEFAULTKEY_LEN, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @HFA384x_RID_CNFWEPDEFAULTKEY_LEN, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @memset(i32* %23, i32 0, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = call i32 @prism2mgmt_pstr2bytearea(i32* %23, %struct.TYPE_5__* %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @hfa384x_drvr_setconfig(i32* %42, i32 %45, i32* %23, i32 %46)
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %36, %26
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %50)
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @prism2mgmt_pstr2bytearea(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @hfa384x_drvr_setconfig(i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
