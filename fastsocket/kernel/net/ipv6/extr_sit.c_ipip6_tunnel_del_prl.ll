; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_tunnel_del_prl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_tunnel_del_prl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { i32, %struct.ip_tunnel_prl_entry* }
%struct.ip_tunnel_prl_entry = type { i64, %struct.ip_tunnel_prl_entry* }
%struct.ip_tunnel_prl = type { i64 }

@ipip6_lock = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_tunnel*, %struct.ip_tunnel_prl*)* @ipip6_tunnel_del_prl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip6_tunnel_del_prl(%struct.ip_tunnel* %0, %struct.ip_tunnel_prl* %1) #0 {
  %3 = alloca %struct.ip_tunnel*, align 8
  %4 = alloca %struct.ip_tunnel_prl*, align 8
  %5 = alloca %struct.ip_tunnel_prl_entry*, align 8
  %6 = alloca %struct.ip_tunnel_prl_entry**, align 8
  %7 = alloca i32, align 4
  store %struct.ip_tunnel* %0, %struct.ip_tunnel** %3, align 8
  store %struct.ip_tunnel_prl* %1, %struct.ip_tunnel_prl** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @write_lock(i32* @ipip6_lock)
  %9 = load %struct.ip_tunnel_prl*, %struct.ip_tunnel_prl** %4, align 8
  %10 = icmp ne %struct.ip_tunnel_prl* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load %struct.ip_tunnel_prl*, %struct.ip_tunnel_prl** %4, align 8
  %13 = getelementptr inbounds %struct.ip_tunnel_prl, %struct.ip_tunnel_prl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @INADDR_ANY, align 4
  %16 = call i64 @htonl(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %11
  %19 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %20 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %19, i32 0, i32 1
  store %struct.ip_tunnel_prl_entry** %20, %struct.ip_tunnel_prl_entry*** %6, align 8
  br label %21

21:                                               ; preds = %48, %18
  %22 = load %struct.ip_tunnel_prl_entry**, %struct.ip_tunnel_prl_entry*** %6, align 8
  %23 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %22, align 8
  %24 = icmp ne %struct.ip_tunnel_prl_entry* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load %struct.ip_tunnel_prl_entry**, %struct.ip_tunnel_prl_entry*** %6, align 8
  %27 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %26, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel_prl_entry, %struct.ip_tunnel_prl_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ip_tunnel_prl*, %struct.ip_tunnel_prl** %4, align 8
  %31 = getelementptr inbounds %struct.ip_tunnel_prl, %struct.ip_tunnel_prl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = load %struct.ip_tunnel_prl_entry**, %struct.ip_tunnel_prl_entry*** %6, align 8
  %36 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %35, align 8
  store %struct.ip_tunnel_prl_entry* %36, %struct.ip_tunnel_prl_entry** %5, align 8
  %37 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %5, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel_prl_entry, %struct.ip_tunnel_prl_entry* %37, i32 0, i32 1
  %39 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %38, align 8
  %40 = load %struct.ip_tunnel_prl_entry**, %struct.ip_tunnel_prl_entry*** %6, align 8
  store %struct.ip_tunnel_prl_entry* %39, %struct.ip_tunnel_prl_entry** %40, align 8
  %41 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %5, align 8
  %42 = call i32 @kfree(%struct.ip_tunnel_prl_entry* %41)
  %43 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %44 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  br label %80

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.ip_tunnel_prl_entry**, %struct.ip_tunnel_prl_entry*** %6, align 8
  %50 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %49, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel_prl_entry, %struct.ip_tunnel_prl_entry* %50, i32 0, i32 1
  store %struct.ip_tunnel_prl_entry** %51, %struct.ip_tunnel_prl_entry*** %6, align 8
  br label %21

52:                                               ; preds = %21
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %79

55:                                               ; preds = %11, %2
  br label %56

56:                                               ; preds = %61, %55
  %57 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %58 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %57, i32 0, i32 1
  %59 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %58, align 8
  %60 = icmp ne %struct.ip_tunnel_prl_entry* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %63 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %62, i32 0, i32 1
  %64 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %63, align 8
  store %struct.ip_tunnel_prl_entry* %64, %struct.ip_tunnel_prl_entry** %5, align 8
  %65 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %66 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %65, i32 0, i32 1
  %67 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %66, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel_prl_entry, %struct.ip_tunnel_prl_entry* %67, i32 0, i32 1
  %69 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %68, align 8
  %70 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %71 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %70, i32 0, i32 1
  store %struct.ip_tunnel_prl_entry* %69, %struct.ip_tunnel_prl_entry** %71, align 8
  %72 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %5, align 8
  %73 = call i32 @kfree(%struct.ip_tunnel_prl_entry* %72)
  %74 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %75 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  br label %56

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79, %34
  %81 = call i32 @write_unlock(i32* @ipip6_lock)
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @kfree(%struct.ip_tunnel_prl_entry*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
