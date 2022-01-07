; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_get_nd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_get_nd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.nameidata**, %struct.nameidata**)* @audit_get_nd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_get_nd(i8* %0, %struct.nameidata** %1, %struct.nameidata** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nameidata**, align 8
  %7 = alloca %struct.nameidata**, align 8
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.nameidata** %1, %struct.nameidata*** %6, align 8
  store %struct.nameidata** %2, %struct.nameidata*** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nameidata* @kmalloc(i32 4, i32 %11)
  store %struct.nameidata* %12, %struct.nameidata** %8, align 8
  %13 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %14 = icmp ne %struct.nameidata* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.nameidata* @kmalloc(i32 4, i32 %23)
  store %struct.nameidata* %24, %struct.nameidata** %9, align 8
  %25 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %26 = icmp ne %struct.nameidata* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %33 = call i32 @kfree(%struct.nameidata* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %22
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @LOOKUP_PARENT, align 4
  %39 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %40 = call i32 @path_lookup(i8* %37, i32 %38, %struct.nameidata* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %45 = call i32 @kfree(%struct.nameidata* %44)
  %46 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %47 = call i32 @kfree(%struct.nameidata* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %36
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %52 = call i32 @path_lookup(i8* %50, i32 0, %struct.nameidata* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %57 = call i32 @kfree(%struct.nameidata* %56)
  store %struct.nameidata* null, %struct.nameidata** %9, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %60 = load %struct.nameidata**, %struct.nameidata*** %6, align 8
  store %struct.nameidata* %59, %struct.nameidata** %60, align 8
  %61 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %62 = load %struct.nameidata**, %struct.nameidata*** %7, align 8
  store %struct.nameidata* %61, %struct.nameidata** %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %43, %31, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.nameidata* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.nameidata*) #1

declare dso_local i32 @path_lookup(i8*, i32, %struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
