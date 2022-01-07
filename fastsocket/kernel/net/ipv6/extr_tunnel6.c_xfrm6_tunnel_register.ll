; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tunnel6.c_xfrm6_tunnel_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tunnel6.c_xfrm6_tunnel_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm6_tunnel = type { i32, %struct.xfrm6_tunnel* }

@EEXIST = common dso_local global i32 0, align 4
@tunnel6_mutex = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i16 0, align 2
@tunnel6_handlers = common dso_local global %struct.xfrm6_tunnel* null, align 8
@tunnel46_handlers = common dso_local global %struct.xfrm6_tunnel* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm6_tunnel_register(%struct.xfrm6_tunnel* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.xfrm6_tunnel*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.xfrm6_tunnel**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfrm6_tunnel* %0, %struct.xfrm6_tunnel** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load i32, i32* @EEXIST, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = call i32 @mutex_lock(i32* @tunnel6_mutex)
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @AF_INET6, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, %struct.xfrm6_tunnel** @tunnel6_handlers, %struct.xfrm6_tunnel** @tunnel46_handlers
  store %struct.xfrm6_tunnel** %20, %struct.xfrm6_tunnel*** %5, align 8
  br label %21

21:                                               ; preds = %42, %2
  %22 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  %23 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %22, align 8
  %24 = icmp ne %struct.xfrm6_tunnel* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  %27 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %26, align 8
  %28 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %46

33:                                               ; preds = %25
  %34 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  %35 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %34, align 8
  %36 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %53

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  %44 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %43, align 8
  %45 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %44, i32 0, i32 1
  store %struct.xfrm6_tunnel** %45, %struct.xfrm6_tunnel*** %5, align 8
  br label %21

46:                                               ; preds = %32, %21
  %47 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  %48 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %47, align 8
  %49 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %3, align 8
  %50 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %49, i32 0, i32 1
  store %struct.xfrm6_tunnel* %48, %struct.xfrm6_tunnel** %50, align 8
  %51 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %3, align 8
  %52 = load %struct.xfrm6_tunnel**, %struct.xfrm6_tunnel*** %5, align 8
  store %struct.xfrm6_tunnel* %51, %struct.xfrm6_tunnel** %52, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %46, %40
  %54 = call i32 @mutex_unlock(i32* @tunnel6_mutex)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
