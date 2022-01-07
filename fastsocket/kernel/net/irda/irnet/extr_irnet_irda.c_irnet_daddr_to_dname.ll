; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_daddr_to_dname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_daddr_to_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }
%struct.irda_device_info = type { i64, i32 }

@IRDA_SERV_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(self=0x%p)\0A\00", align 1
@DISCOVERY_DEFAULT_SLOTS = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IRDA_SERV_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Cachelog empty...\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Device 0x%08x is in fact ``%s''.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c": cannot discover device 0x%08x !!!\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @irnet_daddr_to_dname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irnet_daddr_to_dname(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.irda_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load i32, i32* @IRDA_SERV_TRACE, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = call i32 @DENTER(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %8)
  %10 = load i32, i32* @DISCOVERY_DEFAULT_SLOTS, align 4
  %11 = call %struct.irda_device_info* @irlmp_get_discoveries(i32* %5, i32 65535, i32 %10)
  store %struct.irda_device_info* %11, %struct.irda_device_info** %4, align 8
  %12 = load %struct.irda_device_info*, %struct.irda_device_info** %4, align 8
  %13 = icmp eq %struct.irda_device_info* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @ENETUNREACH, align 4
  %16 = sub nsw i32 0, %15
  %17 = load i32, i32* @IRDA_SERV_INFO, align 4
  %18 = call i32 @DRETURN(i32 %16, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load %struct.irda_device_info*, %struct.irda_device_info** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.irda_device_info, %struct.irda_device_info* %25, i64 %27
  %29 = getelementptr inbounds %struct.irda_device_info, %struct.irda_device_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %24
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.irda_device_info*, %struct.irda_device_info** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.irda_device_info, %struct.irda_device_info* %39, i64 %41
  %43 = getelementptr inbounds %struct.irda_device_info, %struct.irda_device_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strlcpy(i8* %38, i32 %44, i32 8)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 7
  store i8 0, i8* %49, align 1
  %50 = load i32, i32* @IRDA_SERV_INFO, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @DEBUG(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %53, i8* %56)
  %58 = load %struct.irda_device_info*, %struct.irda_device_info** %4, align 8
  %59 = call i32 @kfree(%struct.irda_device_info* %58)
  %60 = load i32, i32* @IRDA_SERV_TRACE, align 4
  %61 = call i32 (i32, i8*, ...) @DEXIT(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

62:                                               ; preds = %24
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %20

66:                                               ; preds = %20
  %67 = load i32, i32* @IRDA_SERV_INFO, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i32, i8*, ...) @DEXIT(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  %72 = load %struct.irda_device_info*, %struct.irda_device_info** %4, align 8
  %73 = call i32 @kfree(%struct.irda_device_info* %72)
  %74 = load i32, i32* @EADDRNOTAVAIL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %35
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local %struct.irda_device_info* @irlmp_get_discoveries(i32*, i32, i32) #1

declare dso_local i32 @DRETURN(i32, i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @DEBUG(i32, i8*, i64, i8*) #1

declare dso_local i32 @kfree(%struct.irda_device_info*) #1

declare dso_local i32 @DEXIT(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
