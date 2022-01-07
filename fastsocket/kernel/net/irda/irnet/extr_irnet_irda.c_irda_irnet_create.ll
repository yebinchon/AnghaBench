; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irda_irnet_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irda_irnet_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i64, i32 }

@IRDA_SOCK_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(self=0x%p)\0A\00", align 1
@IRNET_MAGIC = common dso_local global i32 0, align 4
@DEV_ADDR_ANY = common dso_local global i8* null, align 8
@TTP_SAR_UNBOUND = common dso_local global i32 0, align 4
@S_LAN = common dso_local global i32 0, align 4
@FLOW_START = common dso_local global i32 0, align 4
@irnet_ppp_disconnect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irda_irnet_create(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @IRDA_SOCK_TRACE, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i32 @DENTER(i32 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %4)
  %6 = load i32, i32* @IRNET_MAGIC, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 12
  store i32 %6, i32* %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 11
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** @DEV_ADDR_ANY, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 9
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @DEV_ADDR_ANY, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @DEV_ADDR_ANY, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @DEV_ADDR_ANY, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @TTP_SAR_UNBOUND, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = call i32 @irlmp_register_client(i32 0, i32* null, i32* null, i32* null)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @S_LAN, align 4
  %36 = call i32 @irlmp_service_to_hint(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @FLOW_START, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* @irnet_ppp_disconnect, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load i32, i32* @IRDA_SOCK_TRACE, align 4
  %47 = call i32 @DEXIT(i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @irlmp_register_client(i32, i32*, i32*, i32*) #1

declare dso_local i32 @irlmp_service_to_hint(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
