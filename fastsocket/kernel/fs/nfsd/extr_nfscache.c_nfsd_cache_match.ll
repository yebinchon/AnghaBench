; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_cache_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_cache_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.svc_cacherep = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.sockaddr = type { i32 }

@payload_misses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i64, %struct.svc_cacherep*)* @nfsd_cache_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_cache_match(%struct.svc_rqst* %0, i64 %1, %struct.svc_cacherep* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_cacherep*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.svc_cacherep* %2, %struct.svc_cacherep** %7, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %12 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %65, label %15

15:                                               ; preds = %3
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %20 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %65, label %23

23:                                               ; preds = %15
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %25 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %28 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %23
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %33 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %36 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %65, label %39

39:                                               ; preds = %31
  %40 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %41 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %45 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %65, label %48

48:                                               ; preds = %39
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %50 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %49)
  %51 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %52 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %51, i32 0, i32 6
  %53 = bitcast i32* %52 to %struct.sockaddr*
  %54 = call i32 @rpc_cmp_addr(%struct.sockaddr* %50, %struct.sockaddr* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %58 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %57)
  %59 = call i64 @rpc_get_port(%struct.sockaddr* %58)
  %60 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %61 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %60, i32 0, i32 6
  %62 = bitcast i32* %61 to %struct.sockaddr*
  %63 = call i64 @rpc_get_port(%struct.sockaddr* %62)
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56, %48, %39, %31, %23, %15, %3
  store i32 0, i32* %4, align 4
  br label %76

66:                                               ; preds = %56
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %69 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @payload_misses, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @payload_misses, align 4
  store i32 0, i32* %4, align 4
  br label %76

75:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %72, %65
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @rpc_cmp_addr(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local %struct.sockaddr* @svc_addr(%struct.svc_rqst*) #1

declare dso_local i64 @rpc_get_port(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
