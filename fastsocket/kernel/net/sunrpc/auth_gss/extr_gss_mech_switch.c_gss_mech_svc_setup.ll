; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_svc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_svc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_api_mech = type { i32, %struct.pf_desc* }
%struct.pf_desc = type { i32*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gss_api_mech*)* @gss_mech_svc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_mech_svc_setup(%struct.gss_api_mech* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gss_api_mech*, align 8
  %4 = alloca %struct.pf_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gss_api_mech* %0, %struct.gss_api_mech** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %45, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %10 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %7
  %14 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %15 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %14, i32 0, i32 1
  %16 = load %struct.pf_desc*, %struct.pf_desc** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %16, i64 %18
  store %struct.pf_desc* %19, %struct.pf_desc** %4, align 8
  %20 = load %struct.pf_desc*, %struct.pf_desc** %4, align 8
  %21 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @make_auth_domain_name(i32 %22)
  %24 = load %struct.pf_desc*, %struct.pf_desc** %4, align 8
  %25 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.pf_desc*, %struct.pf_desc** %4, align 8
  %29 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  br label %49

33:                                               ; preds = %13
  %34 = load %struct.pf_desc*, %struct.pf_desc** %4, align 8
  %35 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pf_desc*, %struct.pf_desc** %4, align 8
  %38 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @svcauth_gss_register_pseudoflavor(i32 %36, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %49

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %7

48:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %53

49:                                               ; preds = %43, %32
  %50 = load %struct.gss_api_mech*, %struct.gss_api_mech** %3, align 8
  %51 = call i32 @gss_mech_free(%struct.gss_api_mech* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32* @make_auth_domain_name(i32) #1

declare dso_local i32 @svcauth_gss_register_pseudoflavor(i32, i32*) #1

declare dso_local i32 @gss_mech_free(%struct.gss_api_mech*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
