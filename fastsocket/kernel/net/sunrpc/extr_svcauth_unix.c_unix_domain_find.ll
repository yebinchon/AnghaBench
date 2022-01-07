; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_unix_domain_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_unix_domain_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_domain = type { i32*, i32*, i32 }
%struct.unix_domain = type { %struct.auth_domain, i64 }

@svcauth_unix = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_domain* @unix_domain_find(i8* %0) #0 {
  %2 = alloca %struct.auth_domain*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.auth_domain*, align 8
  %5 = alloca %struct.unix_domain*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.unix_domain* null, %struct.unix_domain** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.auth_domain* @auth_domain_lookup(i8* %6, %struct.auth_domain* null)
  store %struct.auth_domain* %7, %struct.auth_domain** %4, align 8
  br label %8

8:                                                ; preds = %1, %58
  %9 = load %struct.auth_domain*, %struct.auth_domain** %4, align 8
  %10 = icmp ne %struct.auth_domain* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %13 = icmp ne %struct.unix_domain* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.auth_domain*, %struct.auth_domain** %4, align 8
  %16 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %17 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %16, i32 0, i32 0
  %18 = icmp ne %struct.auth_domain* %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %21 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %20, i32 0, i32 0
  %22 = call i32 @auth_domain_put(%struct.auth_domain* %21)
  br label %23

23:                                               ; preds = %19, %14, %11
  %24 = load %struct.auth_domain*, %struct.auth_domain** %4, align 8
  %25 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, @svcauth_unix
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.auth_domain*, %struct.auth_domain** %4, align 8
  %30 = call i32 @auth_domain_put(%struct.auth_domain* %29)
  store %struct.auth_domain* null, %struct.auth_domain** %2, align 8
  br label %68

31:                                               ; preds = %23
  %32 = load %struct.auth_domain*, %struct.auth_domain** %4, align 8
  store %struct.auth_domain* %32, %struct.auth_domain** %2, align 8
  br label %68

33:                                               ; preds = %8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.unix_domain* @kmalloc(i32 32, i32 %34)
  store %struct.unix_domain* %35, %struct.unix_domain** %5, align 8
  %36 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %37 = icmp eq %struct.unix_domain* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store %struct.auth_domain* null, %struct.auth_domain** %2, align 8
  br label %68

39:                                               ; preds = %33
  %40 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %41 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %41, i32 0, i32 2
  %43 = call i32 @kref_init(i32* %42)
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32* @kstrdup(i8* %44, i32 %45)
  %47 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %48 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %48, i32 0, i32 1
  store i32* %46, i32** %49, align 8
  %50 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %51 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %57 = call i32 @kfree(%struct.unix_domain* %56)
  store %struct.auth_domain* null, %struct.auth_domain** %2, align 8
  br label %68

58:                                               ; preds = %39
  %59 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %60 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %60, i32 0, i32 0
  store i32* @svcauth_unix, i32** %61, align 8
  %62 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %63 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load %struct.unix_domain*, %struct.unix_domain** %5, align 8
  %66 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %65, i32 0, i32 0
  %67 = call %struct.auth_domain* @auth_domain_lookup(i8* %64, %struct.auth_domain* %66)
  store %struct.auth_domain* %67, %struct.auth_domain** %4, align 8
  br label %8

68:                                               ; preds = %55, %38, %31, %28
  %69 = load %struct.auth_domain*, %struct.auth_domain** %2, align 8
  ret %struct.auth_domain* %69
}

declare dso_local %struct.auth_domain* @auth_domain_lookup(i8*, %struct.auth_domain*) #1

declare dso_local i32 @auth_domain_put(%struct.auth_domain*) #1

declare dso_local %struct.unix_domain* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.unix_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
