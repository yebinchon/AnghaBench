; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_ra_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_ra_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_ra_chain = type { void (%struct.sock*)*, %struct.ip_ra_chain*, %struct.sock* }
%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@SOCK_RAW = common dso_local global i64 0, align 8
@IPPROTO_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ip_ra_lock = common dso_local global i32 0, align 4
@ip_ra_chain = common dso_local global %struct.ip_ra_chain* null, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_ra_control(%struct.sock* %0, i8 zeroext %1, void (%struct.sock*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i8, align 1
  %7 = alloca void (%struct.sock*)*, align 8
  %8 = alloca %struct.ip_ra_chain*, align 8
  %9 = alloca %struct.ip_ra_chain*, align 8
  %10 = alloca %struct.ip_ra_chain**, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i8 %1, i8* %6, align 1
  store void (%struct.sock*)* %2, void (%struct.sock*)** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SOCK_RAW, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_RAW, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %102

26:                                               ; preds = %16
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ip_ra_chain* @kmalloc(i32 24, i32 %31)
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi %struct.ip_ra_chain* [ %32, %30 ], [ null, %33 ]
  store %struct.ip_ra_chain* %35, %struct.ip_ra_chain** %9, align 8
  %36 = call i32 @write_lock_bh(i32* @ip_ra_lock)
  store %struct.ip_ra_chain** @ip_ra_chain, %struct.ip_ra_chain*** %10, align 8
  br label %37

37:                                               ; preds = %77, %34
  %38 = load %struct.ip_ra_chain**, %struct.ip_ra_chain*** %10, align 8
  %39 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %38, align 8
  store %struct.ip_ra_chain* %39, %struct.ip_ra_chain** %8, align 8
  %40 = icmp ne %struct.ip_ra_chain* %39, null
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %8, align 8
  %43 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %42, i32 0, i32 2
  %44 = load %struct.sock*, %struct.sock** %43, align 8
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = icmp eq %struct.sock* %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load i8, i8* %6, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = call i32 @write_unlock_bh(i32* @ip_ra_lock)
  %52 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %9, align 8
  %53 = call i32 @kfree(%struct.ip_ra_chain* %52)
  %54 = load i32, i32* @EADDRINUSE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %102

56:                                               ; preds = %47
  %57 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %8, align 8
  %58 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %57, i32 0, i32 1
  %59 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %58, align 8
  %60 = load %struct.ip_ra_chain**, %struct.ip_ra_chain*** %10, align 8
  store %struct.ip_ra_chain* %59, %struct.ip_ra_chain** %60, align 8
  %61 = call i32 @write_unlock_bh(i32* @ip_ra_lock)
  %62 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %8, align 8
  %63 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %62, i32 0, i32 0
  %64 = load void (%struct.sock*)*, void (%struct.sock*)** %63, align 8
  %65 = icmp ne void (%struct.sock*)* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %8, align 8
  %68 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %67, i32 0, i32 0
  %69 = load void (%struct.sock*)*, void (%struct.sock*)** %68, align 8
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  call void %69(%struct.sock* %70)
  br label %71

71:                                               ; preds = %66, %56
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = call i32 @sock_put(%struct.sock* %72)
  %74 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %8, align 8
  %75 = call i32 @kfree(%struct.ip_ra_chain* %74)
  store i32 0, i32* %4, align 4
  br label %102

76:                                               ; preds = %41
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %8, align 8
  %79 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %78, i32 0, i32 1
  store %struct.ip_ra_chain** %79, %struct.ip_ra_chain*** %10, align 8
  br label %37

80:                                               ; preds = %37
  %81 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %9, align 8
  %82 = icmp eq %struct.ip_ra_chain* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = call i32 @write_unlock_bh(i32* @ip_ra_lock)
  %85 = load i32, i32* @ENOBUFS, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %102

87:                                               ; preds = %80
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %9, align 8
  %90 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %89, i32 0, i32 2
  store %struct.sock* %88, %struct.sock** %90, align 8
  %91 = load void (%struct.sock*)*, void (%struct.sock*)** %7, align 8
  %92 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %9, align 8
  %93 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %92, i32 0, i32 0
  store void (%struct.sock*)* %91, void (%struct.sock*)** %93, align 8
  %94 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %8, align 8
  %95 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %9, align 8
  %96 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %95, i32 0, i32 1
  store %struct.ip_ra_chain* %94, %struct.ip_ra_chain** %96, align 8
  %97 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %9, align 8
  %98 = load %struct.ip_ra_chain**, %struct.ip_ra_chain*** %10, align 8
  store %struct.ip_ra_chain* %97, %struct.ip_ra_chain** %98, align 8
  %99 = load %struct.sock*, %struct.sock** %5, align 8
  %100 = call i32 @sock_hold(%struct.sock* %99)
  %101 = call i32 @write_unlock_bh(i32* @ip_ra_lock)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %87, %83, %71, %50, %23
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ip_ra_chain* @kmalloc(i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.ip_ra_chain*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
