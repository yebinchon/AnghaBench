; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_route_output_tunnel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_route_output_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32 }
%struct.net = type { i32 }
%struct.flowi = type { i32, i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtable* (%struct.net*, %struct.flowi*, i32, i8*, i8*, i8*, i32, i32)* @ip_route_output_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtable* @ip_route_output_tunnel(%struct.net* %0, %struct.flowi* %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.rtable*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.flowi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rtable*, align 8
  %19 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.flowi* %1, %struct.flowi** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load %struct.flowi*, %struct.flowi** %11, align 8
  %21 = call i32 @memset(%struct.flowi* %20, i32 0, i32 32)
  %22 = load i32, i32* %17, align 4
  %23 = load %struct.flowi*, %struct.flowi** %11, align 8
  %24 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load %struct.flowi*, %struct.flowi** %11, align 8
  %27 = getelementptr inbounds %struct.flowi, %struct.flowi* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load %struct.flowi*, %struct.flowi** %11, align 8
  %30 = getelementptr inbounds %struct.flowi, %struct.flowi* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load %struct.flowi*, %struct.flowi** %11, align 8
  %33 = getelementptr inbounds %struct.flowi, %struct.flowi* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.flowi*, %struct.flowi** %11, align 8
  %36 = getelementptr inbounds %struct.flowi, %struct.flowi* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.net*, %struct.net** %10, align 8
  %38 = load %struct.flowi*, %struct.flowi** %11, align 8
  %39 = call i32 @ip_route_output_key(%struct.net* %37, %struct.rtable** %18, %struct.flowi* %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %8
  %43 = load i32, i32* %19, align 4
  %44 = call %struct.rtable* @ERR_PTR(i32 %43)
  store %struct.rtable* %44, %struct.rtable** %9, align 8
  br label %47

45:                                               ; preds = %8
  %46 = load %struct.rtable*, %struct.rtable** %18, align 8
  store %struct.rtable* %46, %struct.rtable** %9, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = load %struct.rtable*, %struct.rtable** %9, align 8
  ret %struct.rtable* %48
}

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ip_route_output_key(%struct.net*, %struct.rtable**, %struct.flowi*) #1

declare dso_local %struct.rtable* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
