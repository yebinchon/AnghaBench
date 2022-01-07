; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_msg.h_msg_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_msg.h_msg_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }
%struct.iovec = type { i64, i32 }
%struct.sk_buff = type { i64 }

@TIPC_MAX_USER_MSG_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_msg*, %struct.iovec*, i32, i32, i32, %struct.sk_buff**)* @msg_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_build(%struct.tipc_msg* %0, %struct.iovec* %1, i32 %2, i32 %3, i32 %4, %struct.sk_buff** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.tipc_msg* %0, %struct.tipc_msg** %8, align 8
  store %struct.iovec* %1, %struct.iovec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sk_buff** %5, %struct.sk_buff*** %13, align 8
  %20 = load %struct.iovec*, %struct.iovec** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @msg_calc_data_size(%struct.iovec* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @TIPC_MAX_USER_MSG_SIZE, align 4
  %25 = icmp sgt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %148

33:                                               ; preds = %6
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %35 = call i32 @msg_hdr_sz(%struct.tipc_msg* %34)
  store i32 %35, i32* %16, align 4
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @msg_set_size(%struct.tipc_msg* %39, i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %49, align 8
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %7, align 4
  br label %148

51:                                               ; preds = %33
  %52 = load i32, i32* %15, align 4
  %53 = call %struct.sk_buff* @buf_acquire(i32 %52)
  %54 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %54, align 8
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %148

61:                                               ; preds = %51
  %62 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  %64 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %63, %struct.tipc_msg* %64, i32 %65)
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %67

67:                                               ; preds = %132, %61
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i1 [ false, %67 ], [ %73, %70 ]
  br i1 %75, label %76, label %135

76:                                               ; preds = %74
  %77 = load i32, i32* %12, align 4
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load %struct.iovec*, %struct.iovec** %9, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %88, i64 %90
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.iovec*, %struct.iovec** %9, align 8
  %95 = load i32, i32* %19, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.iovec, %struct.iovec* %94, i64 %96
  %98 = getelementptr inbounds %struct.iovec, %struct.iovec* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @copy_from_user(i64 %87, i32 %93, i64 %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %18, align 4
  br label %121

104:                                              ; preds = %76
  %105 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.iovec*, %struct.iovec** %9, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.iovec, %struct.iovec* %108, i64 %110
  %112 = getelementptr inbounds %struct.iovec, %struct.iovec* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.iovec*, %struct.iovec** %9, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.iovec, %struct.iovec* %114, i64 %116
  %118 = getelementptr inbounds %struct.iovec, %struct.iovec* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %106, i32 %107, i32 %113, i64 %119)
  br label %121

121:                                              ; preds = %104, %80
  %122 = load %struct.iovec*, %struct.iovec** %9, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %122, i64 %124
  %126 = getelementptr inbounds %struct.iovec, %struct.iovec* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  br label %67

135:                                              ; preds = %74
  %136 = load i32, i32* %18, align 4
  %137 = call i64 @likely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %7, align 4
  br label %148

141:                                              ; preds = %135
  %142 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %142, align 8
  %144 = call i32 @buf_discard(%struct.sk_buff* %143)
  %145 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %145, align 8
  %146 = load i32, i32* @EFAULT, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %141, %139, %58, %48, %29
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i32 @msg_calc_data_size(%struct.iovec*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local %struct.sk_buff* @buf_acquire(i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @copy_from_user(i64, i32, i64) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
