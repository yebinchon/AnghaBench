; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_api_mech = type { i32, i32 }

@registered_mechs_lock = common dso_local global i32 0, align 4
@registered_mechs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RPC:       registered gss mechanism %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_mech_register(%struct.gss_api_mech* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gss_api_mech*, align 8
  %4 = alloca i32, align 4
  store %struct.gss_api_mech* %0, %struct.gss_api_mech** %3, align 8
  %5 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %6 = call i32 @gss_mech_svc_setup(%struct.gss_api_mech* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = call i32 @spin_lock(i32* @registered_mechs_lock)
  %13 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %14 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %13, i32 0, i32 1
  %15 = call i32 @list_add(i32* %14, i32* @registered_mechs)
  %16 = call i32 @spin_unlock(i32* @registered_mechs_lock)
  %17 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %18 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %11, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @gss_mech_svc_setup(%struct.gss_api_mech*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
