; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tunnel4.c_xfrm4_tunnel_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tunnel4.c_xfrm4_tunnel_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_tunnel = type { i32, %struct.xfrm_tunnel* }

@EEXIST = common dso_local global i32 0, align 4
@tunnel4_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm4_tunnel_register(%struct.xfrm_tunnel* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.xfrm_tunnel*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.xfrm_tunnel**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfrm_tunnel* %0, %struct.xfrm_tunnel** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load i32, i32* @EEXIST, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.xfrm_tunnel*, %struct.xfrm_tunnel** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_tunnel, %struct.xfrm_tunnel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = call i32 @mutex_lock(i32* @tunnel4_mutex)
  %14 = load i16, i16* %4, align 2
  %15 = call %struct.xfrm_tunnel** @fam_handlers(i16 zeroext %14)
  store %struct.xfrm_tunnel** %15, %struct.xfrm_tunnel*** %5, align 8
  br label %16

16:                                               ; preds = %37, %2
  %17 = load %struct.xfrm_tunnel**, %struct.xfrm_tunnel*** %5, align 8
  %18 = load %struct.xfrm_tunnel*, %struct.xfrm_tunnel** %17, align 8
  %19 = icmp ne %struct.xfrm_tunnel* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.xfrm_tunnel**, %struct.xfrm_tunnel*** %5, align 8
  %22 = load %struct.xfrm_tunnel*, %struct.xfrm_tunnel** %21, align 8
  %23 = getelementptr inbounds %struct.xfrm_tunnel, %struct.xfrm_tunnel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.xfrm_tunnel**, %struct.xfrm_tunnel*** %5, align 8
  %30 = load %struct.xfrm_tunnel*, %struct.xfrm_tunnel** %29, align 8
  %31 = getelementptr inbounds %struct.xfrm_tunnel, %struct.xfrm_tunnel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %48

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.xfrm_tunnel**, %struct.xfrm_tunnel*** %5, align 8
  %39 = load %struct.xfrm_tunnel*, %struct.xfrm_tunnel** %38, align 8
  %40 = getelementptr inbounds %struct.xfrm_tunnel, %struct.xfrm_tunnel* %39, i32 0, i32 1
  store %struct.xfrm_tunnel** %40, %struct.xfrm_tunnel*** %5, align 8
  br label %16

41:                                               ; preds = %27, %16
  %42 = load %struct.xfrm_tunnel**, %struct.xfrm_tunnel*** %5, align 8
  %43 = load %struct.xfrm_tunnel*, %struct.xfrm_tunnel** %42, align 8
  %44 = load %struct.xfrm_tunnel*, %struct.xfrm_tunnel** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_tunnel, %struct.xfrm_tunnel* %44, i32 0, i32 1
  store %struct.xfrm_tunnel* %43, %struct.xfrm_tunnel** %45, align 8
  %46 = load %struct.xfrm_tunnel*, %struct.xfrm_tunnel** %3, align 8
  %47 = load %struct.xfrm_tunnel**, %struct.xfrm_tunnel*** %5, align 8
  store %struct.xfrm_tunnel* %46, %struct.xfrm_tunnel** %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %41, %35
  %49 = call i32 @mutex_unlock(i32* @tunnel4_mutex)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xfrm_tunnel** @fam_handlers(i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
