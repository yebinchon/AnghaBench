; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_app = type { %struct.ip_vs_app*, i32, i32, i32, i32, i32, i64, i32, %struct.ip_vs_app*, i32 }
%struct.ip_vs_protocol = type { i32 (%struct.ip_vs_app.0*)*, i32, i32 }
%struct.ip_vs_app.0 = type opaque

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s application %s:%u registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_app*, i32, i32)* @ip_vs_app_inc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_app_inc_new(%struct.ip_vs_app* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_vs_protocol*, align 8
  %9 = alloca %struct.ip_vs_app*, align 8
  %10 = alloca i32, align 4
  store %struct.ip_vs_app* %0, %struct.ip_vs_app** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %11)
  store %struct.ip_vs_protocol* %12, %struct.ip_vs_protocol** %8, align 8
  %13 = icmp ne %struct.ip_vs_protocol* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EPROTONOSUPPORT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %107

17:                                               ; preds = %3
  %18 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %19 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %107

25:                                               ; preds = %17
  %26 = load %struct.ip_vs_app*, %struct.ip_vs_app** %5, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ip_vs_app* @kmemdup(%struct.ip_vs_app* %26, i32 64, i32 %27)
  store %struct.ip_vs_app* %28, %struct.ip_vs_app** %9, align 8
  %29 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %30 = icmp ne %struct.ip_vs_app* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %107

34:                                               ; preds = %25
  %35 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %36 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %35, i32 0, i32 9
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %39 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %38, i32 0, i32 3
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.ip_vs_app*, %struct.ip_vs_app** %5, align 8
  %42 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %43 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %42, i32 0, i32 8
  store %struct.ip_vs_app* %41, %struct.ip_vs_app** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @htons(i32 %44)
  %46 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %47 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %49 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %48, i32 0, i32 7
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.ip_vs_app*, %struct.ip_vs_app** %5, align 8
  %52 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %34
  %56 = load %struct.ip_vs_app*, %struct.ip_vs_app** %5, align 8
  %57 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ip_vs_app*, %struct.ip_vs_app** %5, align 8
  %60 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.ip_vs_app* @ip_vs_create_timeout_table(i64 %58, i32 %61)
  %63 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %64 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %63, i32 0, i32 0
  store %struct.ip_vs_app* %62, %struct.ip_vs_app** %64, align 8
  %65 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %66 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %65, i32 0, i32 0
  %67 = load %struct.ip_vs_app*, %struct.ip_vs_app** %66, align 8
  %68 = icmp ne %struct.ip_vs_app* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %99

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %34
  %74 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %75 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %74, i32 0, i32 0
  %76 = load i32 (%struct.ip_vs_app.0*)*, i32 (%struct.ip_vs_app.0*)** %75, align 8
  %77 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %78 = bitcast %struct.ip_vs_app* %77 to %struct.ip_vs_app.0*
  %79 = call i32 %76(%struct.ip_vs_app.0* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %99

83:                                               ; preds = %73
  %84 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %85 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %84, i32 0, i32 4
  %86 = load %struct.ip_vs_app*, %struct.ip_vs_app** %5, align 8
  %87 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %86, i32 0, i32 3
  %88 = call i32 @list_add(i32* %85, i32* %87)
  %89 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %90 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %93 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %96 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @IP_VS_DBG(i32 9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i32 %97)
  store i32 0, i32* %4, align 4
  br label %107

99:                                               ; preds = %82, %69
  %100 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %101 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %100, i32 0, i32 0
  %102 = load %struct.ip_vs_app*, %struct.ip_vs_app** %101, align 8
  %103 = call i32 @kfree(%struct.ip_vs_app* %102)
  %104 = load %struct.ip_vs_app*, %struct.ip_vs_app** %9, align 8
  %105 = call i32 @kfree(%struct.ip_vs_app* %104)
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %99, %83, %31, %22, %14
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local %struct.ip_vs_app* @kmemdup(%struct.ip_vs_app*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.ip_vs_app* @ip_vs_create_timeout_table(i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ip_vs_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
