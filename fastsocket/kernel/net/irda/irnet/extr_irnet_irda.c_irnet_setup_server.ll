; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_setup_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_setup_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32* }

@IRDA_SERV_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@irnet_server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@S_LAN = common dso_local global i32 0, align 4
@IRNET_SERVICE_NAME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IRNET_IAS_VALUE = common dso_local global i32 0, align 4
@IAS_KERNEL_ATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" - self=0x%p\0A\00", align 1
@irnet_discovery_indication = common dso_local global i32 0, align 4
@irnet_expiry_indication = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @irnet_setup_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irnet_setup_server() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @IRDA_SERV_TRACE, align 4
  %3 = call i32 @DENTER(i32 %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @irda_irnet_create(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 0))
  %5 = call i32 @irnet_open_tsap(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 0, i32 3, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 0, i32 2), align 8
  %6 = load i32, i32* @S_LAN, align 4
  %7 = call i32 @irlmp_service_to_hint(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @IRNET_SERVICE_NAME, align 4
  %9 = load i32, i32* @jiffies, align 4
  %10 = call i32 @irias_new_object(i32 %8, i32 %9)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 1), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 1), align 8
  %12 = load i32, i32* @IRNET_IAS_VALUE, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 0, i32 1), align 4
  %14 = load i32, i32* @IAS_KERNEL_ATTR, align 4
  %15 = call i32 @irias_add_integer_attrib(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 1), align 8
  %17 = call i32 @irias_insert_object(i32 %16)
  %18 = load i32, i32* @IRDA_SERV_TRACE, align 4
  %19 = call i32 @DEXIT(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_server, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @DENTER(i32, i8*) #1

declare dso_local i32 @irda_irnet_create(%struct.TYPE_8__*) #1

declare dso_local i32 @irnet_open_tsap(%struct.TYPE_8__*) #1

declare dso_local i32 @irlmp_service_to_hint(i32) #1

declare dso_local i32 @irias_new_object(i32, i32) #1

declare dso_local i32 @irias_add_integer_attrib(i32, i32, i32, i32) #1

declare dso_local i32 @irias_insert_object(i32) #1

declare dso_local i32 @DEXIT(i32, i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
