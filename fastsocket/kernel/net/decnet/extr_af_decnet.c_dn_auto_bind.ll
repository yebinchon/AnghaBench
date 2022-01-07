; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_auto_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_auto_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.dn_scp = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @dn_auto_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_auto_bind(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dn_scp*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.dn_scp* @DN_SK(%struct.sock* %9)
  store %struct.dn_scp* %10, %struct.dn_scp** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load i32, i32* @SOCK_ZAPPED, align 4
  %13 = call i32 @sock_reset_flag(%struct.sock* %11, i32 %12)
  %14 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %15 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %18 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %21 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %1
  %26 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %27 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 12
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %33 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %38 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %41 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %45 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %49 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @le16_to_cpu(i8* %51)
  %53 = call i32 @memcpy(i32 %43, i32 %47, i32 %52)
  %54 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %55 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %58 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i32 %60, i32 0, i32 40)
  br label %62

62:                                               ; preds = %31, %25, %1
  %63 = call i8* @cpu_to_le16(i32 2)
  %64 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %65 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i8* %63, i8** %67, align 8
  %68 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %69 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = call i32 @dn_dev_bind_default(i32* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %62
  %78 = load %struct.sock*, %struct.sock** %3, align 8
  %79 = call i32 @dn_hash_sock(%struct.sock* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = load i32, i32* @SOCK_ZAPPED, align 4
  %85 = call i32 @sock_set_flag(%struct.sock* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %77
  br label %87

87:                                               ; preds = %86, %62
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dn_dev_bind_default(i32*) #1

declare dso_local i32 @dn_hash_sock(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
