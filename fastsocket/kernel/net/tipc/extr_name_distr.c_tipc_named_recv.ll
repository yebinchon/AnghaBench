; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_tipc_named_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_tipc_named_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.publication = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.distr_item = type { i32, i32, i32, i32, i32 }

@ITEM_SIZE = common dso_local global i32 0, align 4
@tipc_nametbl_lock = common dso_local global i32 0, align 4
@PUBLICATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"tipc_named_recv: got publication for %u, %u, %u\0A\00", align 1
@TIPC_CLUSTER_SCOPE = common dso_local global i32 0, align 4
@node_is_down = common dso_local global i64 0, align 8
@WITHDRAWAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"tipc_named_recv: got withdrawl for %u, %u, %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"Unable to remove publication by node 0x%x\0A(type=%u, lower=%u, ref=%u, key=%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Unrecognized name table message received\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_named_recv(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.publication*, align 8
  %4 = alloca %struct.tipc_msg*, align 8
  %5 = alloca %struct.distr_item*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %7)
  store %struct.tipc_msg* %8, %struct.tipc_msg** %4, align 8
  %9 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %10 = call i64 @msg_data(%struct.tipc_msg* %9)
  %11 = inttoptr i64 %10 to %struct.distr_item*
  store %struct.distr_item* %11, %struct.distr_item** %5, align 8
  %12 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %13 = call i32 @msg_data_sz(%struct.tipc_msg* %12)
  %14 = load i32, i32* @ITEM_SIZE, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = call i32 @write_lock_bh(i32* @tipc_nametbl_lock)
  br label %17

17:                                               ; preds = %146, %1
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %149

21:                                               ; preds = %17
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %23 = call i64 @msg_type(%struct.tipc_msg* %22)
  %24 = load i64, i64* @PUBLICATION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %21
  %27 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %28 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  %31 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %32 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  %35 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %36 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohl(i32 %37)
  %39 = call i32 @dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34, i32 %38)
  %40 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %41 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  %44 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %45 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohl(i32 %46)
  %48 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %49 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  %52 = load i32, i32* @TIPC_CLUSTER_SCOPE, align 4
  %53 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %54 = call i32 @msg_orignode(%struct.tipc_msg* %53)
  %55 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %56 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohl(i32 %57)
  %59 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %60 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohl(i32 %61)
  %63 = call %struct.publication* @tipc_nametbl_insert_publ(i32 %43, i32 %47, i32 %51, i32 %52, i32 %54, i32 %58, i32 %62)
  store %struct.publication* %63, %struct.publication** %3, align 8
  %64 = load %struct.publication*, %struct.publication** %3, align 8
  %65 = icmp ne %struct.publication* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %26
  %67 = load %struct.publication*, %struct.publication** %3, align 8
  %68 = getelementptr inbounds %struct.publication, %struct.publication* %67, i32 0, i32 0
  %69 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %70 = call i32 @msg_orignode(%struct.tipc_msg* %69)
  %71 = load %struct.publication*, %struct.publication** %3, align 8
  %72 = load i64, i64* @node_is_down, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @tipc_nodesub_subscribe(i32* %68, i32 %70, %struct.publication* %71, i32 %73)
  br label %75

75:                                               ; preds = %66, %26
  br label %146

76:                                               ; preds = %21
  %77 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %78 = call i64 @msg_type(%struct.tipc_msg* %77)
  %79 = load i64, i64* @WITHDRAWAL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %143

81:                                               ; preds = %76
  %82 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %83 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohl(i32 %84)
  %86 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %87 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ntohl(i32 %88)
  %90 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %91 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ntohl(i32 %92)
  %94 = call i32 @dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %89, i32 %93)
  %95 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %96 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ntohl(i32 %97)
  %99 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %100 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ntohl(i32 %101)
  %103 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %104 = call i32 @msg_orignode(%struct.tipc_msg* %103)
  %105 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %106 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ntohl(i32 %107)
  %109 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %110 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ntohl(i32 %111)
  %113 = call %struct.publication* @tipc_nametbl_remove_publ(i32 %98, i32 %102, i32 %104, i32 %108, i32 %112)
  store %struct.publication* %113, %struct.publication** %3, align 8
  %114 = load %struct.publication*, %struct.publication** %3, align 8
  %115 = icmp ne %struct.publication* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %81
  %117 = load %struct.publication*, %struct.publication** %3, align 8
  %118 = getelementptr inbounds %struct.publication, %struct.publication* %117, i32 0, i32 0
  %119 = call i32 @tipc_nodesub_unsubscribe(i32* %118)
  %120 = load %struct.publication*, %struct.publication** %3, align 8
  %121 = call i32 @kfree(%struct.publication* %120)
  br label %142

122:                                              ; preds = %81
  %123 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %124 = call i32 @msg_orignode(%struct.tipc_msg* %123)
  %125 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %126 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ntohl(i32 %127)
  %129 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %130 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ntohl(i32 %131)
  %133 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %134 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ntohl(i32 %135)
  %137 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %138 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ntohl(i32 %139)
  %141 = call i32 @err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %128, i32 %132, i32 %136, i32 %140)
  br label %142

142:                                              ; preds = %122, %116
  br label %145

143:                                              ; preds = %76
  %144 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %142
  br label %146

146:                                              ; preds = %145, %75
  %147 = load %struct.distr_item*, %struct.distr_item** %5, align 8
  %148 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %147, i32 1
  store %struct.distr_item* %148, %struct.distr_item** %5, align 8
  br label %17

149:                                              ; preds = %17
  %150 = call i32 @write_unlock_bh(i32* @tipc_nametbl_lock)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %152 = call i32 @buf_discard(%struct.sk_buff* %151)
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.publication* @tipc_nametbl_insert_publ(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_nodesub_subscribe(i32*, i32, %struct.publication*, i32) #1

declare dso_local %struct.publication* @tipc_nametbl_remove_publ(i32, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_nodesub_unsubscribe(i32*) #1

declare dso_local i32 @kfree(%struct.publication*) #1

declare dso_local i32 @err(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
