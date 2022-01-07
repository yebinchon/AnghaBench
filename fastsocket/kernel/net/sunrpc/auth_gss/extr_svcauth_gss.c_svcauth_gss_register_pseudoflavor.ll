; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_register_pseudoflavor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_register_pseudoflavor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_domain = type { %struct.auth_domain, i32 }
%struct.auth_domain = type { %struct.gss_domain*, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@svcauthops_gss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svcauth_gss_register_pseudoflavor(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gss_domain*, align 8
  %7 = alloca %struct.auth_domain*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gss_domain* @kmalloc(i32 32, i32 %11)
  store %struct.gss_domain* %12, %struct.gss_domain** %6, align 8
  %13 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %14 = icmp ne %struct.gss_domain* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %18 = getelementptr inbounds %struct.gss_domain, %struct.gss_domain* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %18, i32 0, i32 2
  %20 = call i32 @kref_init(i32* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.gss_domain* @kstrdup(i8* %21, i32 %22)
  %24 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %25 = getelementptr inbounds %struct.gss_domain, %struct.gss_domain* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %25, i32 0, i32 0
  store %struct.gss_domain* %23, %struct.gss_domain** %26, align 8
  %27 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %28 = getelementptr inbounds %struct.gss_domain, %struct.gss_domain* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %28, i32 0, i32 0
  %30 = load %struct.gss_domain*, %struct.gss_domain** %29, align 8
  %31 = icmp ne %struct.gss_domain* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  br label %57

33:                                               ; preds = %16
  %34 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %35 = getelementptr inbounds %struct.gss_domain, %struct.gss_domain* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %35, i32 0, i32 1
  store i32* @svcauthops_gss, i32** %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %39 = getelementptr inbounds %struct.gss_domain, %struct.gss_domain* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %8, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %42 = getelementptr inbounds %struct.gss_domain, %struct.gss_domain* %41, i32 0, i32 0
  %43 = call %struct.auth_domain* @auth_domain_lookup(i8* %40, %struct.auth_domain* %42)
  store %struct.auth_domain* %43, %struct.auth_domain** %7, align 8
  %44 = load %struct.auth_domain*, %struct.auth_domain** %7, align 8
  %45 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %46 = getelementptr inbounds %struct.gss_domain, %struct.gss_domain* %45, i32 0, i32 0
  %47 = icmp ne %struct.auth_domain* %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load %struct.auth_domain*, %struct.auth_domain** %7, align 8
  %50 = call i32 @auth_domain_put(%struct.auth_domain* %49)
  %51 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %52 = getelementptr inbounds %struct.gss_domain, %struct.gss_domain* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %52, i32 0, i32 0
  %54 = load %struct.gss_domain*, %struct.gss_domain** %53, align 8
  %55 = call i32 @kfree(%struct.gss_domain* %54)
  br label %57

56:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %62

57:                                               ; preds = %48, %32
  %58 = load %struct.gss_domain*, %struct.gss_domain** %6, align 8
  %59 = call i32 @kfree(%struct.gss_domain* %58)
  br label %60

60:                                               ; preds = %57, %15
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.gss_domain* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local %struct.gss_domain* @kstrdup(i8*, i32) #1

declare dso_local %struct.auth_domain* @auth_domain_lookup(i8*, %struct.auth_domain*) #1

declare dso_local i32 @auth_domain_put(%struct.auth_domain*) #1

declare dso_local i32 @kfree(%struct.gss_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
