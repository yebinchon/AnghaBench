; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_peek_nack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_peek_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64)* @tipc_bclink_peek_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_bclink_peek_nack(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tipc_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.tipc_node* @tipc_node_find(i64 %15)
  store %struct.tipc_node* %16, %struct.tipc_node** %9, align 8
  %17 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %18 = icmp ne %struct.tipc_node* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %21 = call i32 @tipc_node_is_up(%struct.tipc_node* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %4
  %25 = phi i1 [ true, %4 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %157

30:                                               ; preds = %24
  %31 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %32 = call i32 @tipc_node_lock(%struct.tipc_node* %31)
  %33 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %34 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %38 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @less_eq(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %30
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @less(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @less(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %58 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %74

60:                                               ; preds = %50, %45
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @less_eq(i64 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %67 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %71 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %65, %60
  br label %74

74:                                               ; preds = %73, %55
  br label %133

75:                                               ; preds = %30
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @less_eq(i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @less_eq(i64 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %88 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %80
  br label %132

91:                                               ; preds = %75
  %92 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %93 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load %struct.sk_buff*, %struct.sk_buff** %94, align 8
  store %struct.sk_buff* %95, %struct.sk_buff** %12, align 8
  %96 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %97 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %13, align 8
  br label %100

100:                                              ; preds = %119, %91
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = icmp ne %struct.sk_buff* %101, null
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  %104 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %105 = call i64 @buf_seqno(%struct.sk_buff* %104)
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %13, align 8
  %108 = sub nsw i64 %106, %107
  %109 = call i32 @mod(i64 %108)
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  br label %123

112:                                              ; preds = %103
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %123

117:                                              ; preds = %112
  %118 = load i64, i64* %14, align 8
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %117
  %120 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load %struct.sk_buff*, %struct.sk_buff** %121, align 8
  store %struct.sk_buff* %122, %struct.sk_buff** %12, align 8
  br label %100

123:                                              ; preds = %116, %111, %100
  %124 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %125 = icmp eq %struct.sk_buff* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %129 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131, %90
  br label %133

133:                                              ; preds = %132, %74
  %134 = load i64, i64* %6, align 8
  %135 = add nsw i64 %134, 1
  %136 = call i64 @bclink_ack_allowed(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %140 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %144 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %142, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %150 = call i32 @bclink_send_nack(%struct.tipc_node* %149)
  %151 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %152 = call i32 @bclink_set_gap(%struct.tipc_node* %151)
  br label %153

153:                                              ; preds = %148, %138
  br label %154

154:                                              ; preds = %153, %133
  %155 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %156 = call i32 @tipc_node_unlock(%struct.tipc_node* %155)
  br label %157

157:                                              ; preds = %154, %29
  ret void
}

declare dso_local %struct.tipc_node* @tipc_node_find(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_node_is_up(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i64 @less_eq(i64, i64) #1

declare dso_local i64 @less(i64, i64) #1

declare dso_local i64 @buf_seqno(%struct.sk_buff*) #1

declare dso_local i32 @mod(i64) #1

declare dso_local i64 @bclink_ack_allowed(i64) #1

declare dso_local i32 @bclink_send_nack(%struct.tipc_node*) #1

declare dso_local i32 @bclink_set_gap(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
