; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_set_mpc_ctrl_addr_rcvd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_set_mpc_ctrl_addr_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { i32 }
%struct.mpoa_client = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.lec_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32*)* }

@ATM_ESA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mpoa: (%s) setting MPC ctrl ATM address to \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"mpoa: (%s) MPOA device type TLV association failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"mpoa: (%s) targetless LE_ARP request failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @set_mpc_ctrl_addr_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mpc_ctrl_addr_rcvd(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca %struct.lec_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %10 = load i32, i32* @ATM_ESA_LEN, align 4
  %11 = add nsw i32 7, %10
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %15, align 16
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 160, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 62, i32* %17, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 42, i32* %18, align 4
  %19 = load i32, i32* @ATM_ESA_LEN, align 4
  %20 = add nsw i32 2, %19
  %21 = getelementptr inbounds i32, i32* %14, i64 4
  store i32 %20, i32* %21, align 16
  %22 = getelementptr inbounds i32, i32* %14, i64 5
  store i32 2, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %14, i64 6
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds i32, i32* %14, i64 7
  %25 = load %struct.k_message*, %struct.k_message** %3, align 8
  %26 = getelementptr inbounds %struct.k_message, %struct.k_message* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATM_ESA_LEN, align 4
  %29 = call i32 @memcpy(i32* %24, i32 %27, i32 %28)
  %30 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %31 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.k_message*, %struct.k_message** %3, align 8
  %34 = getelementptr inbounds %struct.k_message, %struct.k_message* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATM_ESA_LEN, align 4
  %37 = call i32 @memcpy(i32* %32, i32 %35, i32 %36)
  %38 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %39 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %44 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  br label %49

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i8* [ %47, %42 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %48 ]
  %51 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 7, i32* %6, align 4
  br label %52

52:                                               ; preds = %63, %49
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nuw i64 4, %12
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %14, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %52

66:                                               ; preds = %52
  %67 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %69 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %122

72:                                               ; preds = %66
  %73 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %74 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call %struct.lec_priv* @netdev_priv(%struct.TYPE_6__* %75)
  store %struct.lec_priv* %76, %struct.lec_priv** %5, align 8
  %77 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %78 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_6__*, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32, i32*, i32)** %80, align 8
  %82 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %83 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %86 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = mul nuw i64 4, %12
  %91 = trunc i64 %90 to i32
  %92 = call i32 %81(%struct.TYPE_6__* %84, i32 %89, i32* %14, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %72
  %96 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %97 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %95, %72
  %103 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %104 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32*)** %106, align 8
  %108 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %109 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 %107(%struct.TYPE_6__* %110, i32* null, i32 1, i32* null, i32* null)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %102
  %115 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %116 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %114, %102
  br label %122

122:                                              ; preds = %121, %66
  %123 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @dprintk(i8*, ...) #2

declare dso_local %struct.lec_priv* @netdev_priv(%struct.TYPE_6__*) #2

declare dso_local i32 @printk(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
