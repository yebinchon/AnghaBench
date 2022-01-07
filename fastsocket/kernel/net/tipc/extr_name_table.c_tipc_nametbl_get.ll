; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.tipc_name_table_query = type { i32, i32, i32, i32 }
%struct.tlv_desc = type opaque
%struct.print_buf = type { i32 }

@TIPC_TLV_NAME_TBL_QUERY = common dso_local global i32 0, align 4
@TIPC_CFG_TLV_ERROR = common dso_local global i32 0, align 4
@MAX_NAME_TBL_QUERY = common dso_local global i32 0, align 4
@tipc_nametbl_lock = common dso_local global i32 0, align 4
@TIPC_TLV_ULTRA_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_nametbl_get(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tipc_name_table_query*, align 8
  %8 = alloca %struct.tlv_desc*, align 8
  %9 = alloca %struct.print_buf, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TIPC_TLV_NAME_TBL_QUERY, align 4
  %14 = call i32 @TLV_CHECK(i8* %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @TIPC_CFG_TLV_ERROR, align 4
  %18 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %3, align 8
  br label %69

19:                                               ; preds = %2
  %20 = load i32, i32* @MAX_NAME_TBL_QUERY, align 4
  %21 = call i32 @TLV_SPACE(i32 %20)
  %22 = call %struct.sk_buff* @tipc_cfg_reply_alloc(i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %69

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.tlv_desc*
  store %struct.tlv_desc* %30, %struct.tlv_desc** %8, align 8
  %31 = load %struct.tlv_desc*, %struct.tlv_desc** %8, align 8
  %32 = bitcast %struct.tlv_desc* %31 to i8*
  %33 = call i64 @TLV_DATA(i8* %32)
  %34 = load i32, i32* @MAX_NAME_TBL_QUERY, align 4
  %35 = call i32 @tipc_printbuf_init(%struct.print_buf* %9, i64 %33, i32 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @TLV_DATA(i8* %36)
  %38 = inttoptr i64 %37 to %struct.tipc_name_table_query*
  store %struct.tipc_name_table_query* %38, %struct.tipc_name_table_query** %7, align 8
  %39 = call i32 @read_lock_bh(i32* @tipc_nametbl_lock)
  %40 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %7, align 8
  %41 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  %44 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %7, align 8
  %45 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohl(i32 %46)
  %48 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %7, align 8
  %49 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  %52 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %7, align 8
  %53 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  %56 = call i32 @nametbl_list(%struct.print_buf* %9, i32 %43, i32 %47, i32 %51, i32 %55)
  %57 = call i32 @read_unlock_bh(i32* @tipc_nametbl_lock)
  %58 = call i32 @tipc_printbuf_validate(%struct.print_buf* %9)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @TLV_SPACE(i32 %60)
  %62 = call i32 @skb_put(%struct.sk_buff* %59, i32 %61)
  %63 = load %struct.tlv_desc*, %struct.tlv_desc** %8, align 8
  %64 = bitcast %struct.tlv_desc* %63 to i8*
  %65 = load i32, i32* @TIPC_TLV_ULTRA_STRING, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @TLV_SET(i8* %64, i32 %65, i32* null, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %3, align 8
  br label %69

69:                                               ; preds = %26, %25, %16
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %70
}

declare dso_local i32 @TLV_CHECK(i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_error_string(i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_alloc(i32) #1

declare dso_local i32 @TLV_SPACE(i32) #1

declare dso_local i32 @tipc_printbuf_init(%struct.print_buf*, i64, i32) #1

declare dso_local i64 @TLV_DATA(i8*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @nametbl_list(%struct.print_buf*, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @tipc_printbuf_validate(%struct.print_buf*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @TLV_SET(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
