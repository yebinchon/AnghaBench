; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.tipc_msg*, i32, i32, %struct.bearer*, i32, i32 }
%struct.TYPE_6__ = type { %struct.link* }
%struct.tipc_msg = type { i32 }
%struct.bearer = type { i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tipc_media_addr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Link creation failed, no memory\0A\00", align 1
@LINK_LOG_BUF_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Link creation failed, no memory for print buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%u.%u.%u:%s-%u.%u.%u:\00", align 1
@tipc_own_addr = common dso_local global i32 0, align 4
@RESET_UNKNOWN = common dso_local global i32 0, align 4
@LINK_PROTOCOL = common dso_local global i32 0, align 4
@RESET_MSG = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@tipc_random = common dso_local global i32 0, align 4
@link_timeout = common dso_local global i64 0, align 8
@tipc_link_start = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [69 x i8] c"tipc_link_create(): tolerance = %u,cont intv = %u, abort_limit = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.link* @tipc_link_create(%struct.bearer* %0, i32 %1, %struct.tipc_media_addr* %2) #0 {
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.bearer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_media_addr*, align 8
  %8 = alloca %struct.link*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.bearer* %0, %struct.bearer** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tipc_media_addr* %2, %struct.tipc_media_addr** %7, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.link* @kzalloc(i32 88, i32 %12)
  store %struct.link* %13, %struct.link** %8, align 8
  %14 = load %struct.link*, %struct.link** %8, align 8
  %15 = icmp ne %struct.link* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.link* null, %struct.link** %4, align 8
  br label %185

18:                                               ; preds = %3
  %19 = load i64, i64* @LINK_LOG_BUF_SIZE, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i64, i64* @LINK_LOG_BUF_SIZE, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i8* @kmalloc(i64 %22, i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.link*, %struct.link** %8, align 8
  %29 = call i32 @kfree(%struct.link* %28)
  %30 = call i32 @warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store %struct.link* null, %struct.link** %4, align 8
  br label %185

31:                                               ; preds = %21
  %32 = load %struct.link*, %struct.link** %8, align 8
  %33 = getelementptr inbounds %struct.link, %struct.link* %32, i32 0, i32 7
  %34 = load i8*, i8** %11, align 8
  %35 = load i64, i64* @LINK_LOG_BUF_SIZE, align 8
  %36 = call i32 @tipc_printbuf_init(%struct.TYPE_6__* %33, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %31, %18
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.link*, %struct.link** %8, align 8
  %40 = getelementptr inbounds %struct.link, %struct.link* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bearer*, %struct.bearer** %5, align 8
  %42 = getelementptr inbounds %struct.bearer, %struct.bearer* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @strchr(i32 %44, i8 signext 58)
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %10, align 8
  %47 = load %struct.link*, %struct.link** %8, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 17
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @tipc_own_addr, align 4
  %51 = call i32 @tipc_zone(i32 %50)
  %52 = load i32, i32* @tipc_own_addr, align 4
  %53 = call i32 @tipc_cluster(i32 %52)
  %54 = load i32, i32* @tipc_own_addr, align 4
  %55 = call i32 @tipc_node(i32 %54)
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @tipc_zone(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @tipc_cluster(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @tipc_node(i32 %61)
  %63 = call i32 @sprintf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53, i32 %55, i8* %56, i32 %58, i32 %60, i32 %62)
  %64 = load %struct.link*, %struct.link** %8, align 8
  %65 = getelementptr inbounds %struct.link, %struct.link* %64, i32 0, i32 16
  %66 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %7, align 8
  %67 = call i32 @memcpy(i32* %65, %struct.tipc_media_addr* %66, i32 4)
  %68 = load %struct.link*, %struct.link** %8, align 8
  %69 = getelementptr inbounds %struct.link, %struct.link* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.bearer*, %struct.bearer** %5, align 8
  %71 = load %struct.link*, %struct.link** %8, align 8
  %72 = getelementptr inbounds %struct.link, %struct.link* %71, i32 0, i32 15
  store %struct.bearer* %70, %struct.bearer** %72, align 8
  %73 = load %struct.link*, %struct.link** %8, align 8
  %74 = load %struct.bearer*, %struct.bearer** %5, align 8
  %75 = getelementptr inbounds %struct.bearer, %struct.bearer* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @link_set_supervision_props(%struct.link* %73, i32 %78)
  %80 = load i32, i32* @RESET_UNKNOWN, align 4
  %81 = load %struct.link*, %struct.link** %8, align 8
  %82 = getelementptr inbounds %struct.link, %struct.link* %81, i32 0, i32 14
  store i32 %80, i32* %82, align 4
  %83 = load %struct.link*, %struct.link** %8, align 8
  %84 = getelementptr inbounds %struct.link, %struct.link* %83, i32 0, i32 13
  %85 = bitcast i32* %84 to %struct.tipc_msg*
  %86 = load %struct.link*, %struct.link** %8, align 8
  %87 = getelementptr inbounds %struct.link, %struct.link* %86, i32 0, i32 12
  store %struct.tipc_msg* %85, %struct.tipc_msg** %87, align 8
  %88 = load %struct.link*, %struct.link** %8, align 8
  %89 = getelementptr inbounds %struct.link, %struct.link* %88, i32 0, i32 12
  %90 = load %struct.tipc_msg*, %struct.tipc_msg** %89, align 8
  store %struct.tipc_msg* %90, %struct.tipc_msg** %9, align 8
  %91 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %92 = load i32, i32* @LINK_PROTOCOL, align 4
  %93 = load i32, i32* @RESET_MSG, align 4
  %94 = load i32, i32* @INT_H_SIZE, align 4
  %95 = load %struct.link*, %struct.link** %8, align 8
  %96 = getelementptr inbounds %struct.link, %struct.link* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @msg_init(%struct.tipc_msg* %91, i32 %92, i32 %93, i32 %94, i32 %97)
  %99 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %100 = call i32 @msg_set_size(%struct.tipc_msg* %99, i32 4)
  %101 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %102 = load i32, i32* @tipc_random, align 4
  %103 = and i32 %102, 65535
  %104 = call i32 @msg_set_session(%struct.tipc_msg* %101, i32 %103)
  %105 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %106 = load %struct.bearer*, %struct.bearer** %5, align 8
  %107 = getelementptr inbounds %struct.bearer, %struct.bearer* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @msg_set_bearer_id(%struct.tipc_msg* %105, i32 %108)
  %110 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %111 = call i64 @msg_data(%struct.tipc_msg* %110)
  %112 = inttoptr i64 %111 to i8*
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @strcpy(i8* %112, i8* %113)
  %115 = load %struct.bearer*, %struct.bearer** %5, align 8
  %116 = getelementptr inbounds %struct.bearer, %struct.bearer* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.link*, %struct.link** %8, align 8
  %119 = getelementptr inbounds %struct.link, %struct.link* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  %120 = load %struct.link*, %struct.link** %8, align 8
  %121 = load %struct.bearer*, %struct.bearer** %5, align 8
  %122 = getelementptr inbounds %struct.bearer, %struct.bearer* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @tipc_link_set_queue_limits(%struct.link* %120, i32 %125)
  %127 = load %struct.link*, %struct.link** %8, align 8
  %128 = call i32 @link_init_max_pkt(%struct.link* %127)
  %129 = load %struct.link*, %struct.link** %8, align 8
  %130 = getelementptr inbounds %struct.link, %struct.link* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.link*, %struct.link** %8, align 8
  %132 = getelementptr inbounds %struct.link, %struct.link* %131, i32 0, i32 9
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load %struct.link*, %struct.link** %8, align 8
  %135 = call i32 @link_reset_statistics(%struct.link* %134)
  %136 = load %struct.link*, %struct.link** %8, align 8
  %137 = call i32 @tipc_node_attach_link(%struct.link* %136)
  %138 = load %struct.link*, %struct.link** %8, align 8
  %139 = getelementptr inbounds %struct.link, %struct.link* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 8
  %140 = load %struct.link*, %struct.link** %8, align 8
  %141 = getelementptr inbounds %struct.link, %struct.link* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %37
  %145 = load i64, i64* @LINK_LOG_BUF_SIZE, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.link*, %struct.link** %8, align 8
  %149 = getelementptr inbounds %struct.link, %struct.link* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.link*, %struct.link** %150, align 8
  %152 = call i32 @kfree(%struct.link* %151)
  br label %153

153:                                              ; preds = %147, %144
  %154 = load %struct.link*, %struct.link** %8, align 8
  %155 = call i32 @kfree(%struct.link* %154)
  store %struct.link* null, %struct.link** %4, align 8
  br label %185

156:                                              ; preds = %37
  %157 = load %struct.link*, %struct.link** %8, align 8
  %158 = getelementptr inbounds %struct.link, %struct.link* %157, i32 0, i32 6
  %159 = load i64, i64* @link_timeout, align 8
  %160 = trunc i64 %159 to i32
  %161 = load %struct.link*, %struct.link** %8, align 8
  %162 = ptrtoint %struct.link* %161 to i64
  %163 = call i32 @k_init_timer(i32* %158, i32 %160, i64 %162)
  %164 = load %struct.link*, %struct.link** %8, align 8
  %165 = getelementptr inbounds %struct.link, %struct.link* %164, i32 0, i32 5
  %166 = load %struct.bearer*, %struct.bearer** %5, align 8
  %167 = getelementptr inbounds %struct.bearer, %struct.bearer* %166, i32 0, i32 0
  %168 = call i32 @list_add_tail(i32* %165, i32* %167)
  %169 = load i64, i64* @tipc_link_start, align 8
  %170 = trunc i64 %169 to i32
  %171 = load %struct.link*, %struct.link** %8, align 8
  %172 = ptrtoint %struct.link* %171 to i64
  %173 = call i32 @tipc_k_signal(i32 %170, i64 %172)
  %174 = load %struct.link*, %struct.link** %8, align 8
  %175 = getelementptr inbounds %struct.link, %struct.link* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.link*, %struct.link** %8, align 8
  %178 = getelementptr inbounds %struct.link, %struct.link* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.link*, %struct.link** %8, align 8
  %181 = getelementptr inbounds %struct.link, %struct.link* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dbg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %176, i32 %179, i32 %182)
  %184 = load %struct.link*, %struct.link** %8, align 8
  store %struct.link* %184, %struct.link** %4, align 8
  br label %185

185:                                              ; preds = %156, %153, %27, %16
  %186 = load %struct.link*, %struct.link** %4, align 8
  ret %struct.link* %186
}

declare dso_local %struct.link* @kzalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.link*) #1

declare dso_local i32 @tipc_printbuf_init(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @tipc_zone(i32) #1

declare dso_local i32 @tipc_cluster(i32) #1

declare dso_local i32 @tipc_node(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.tipc_media_addr*, i32) #1

declare dso_local i32 @link_set_supervision_props(%struct.link*, i32) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_session(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bearer_id(%struct.tipc_msg*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_set_queue_limits(%struct.link*, i32) #1

declare dso_local i32 @link_init_max_pkt(%struct.link*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @link_reset_statistics(%struct.link*) #1

declare dso_local i32 @tipc_node_attach_link(%struct.link*) #1

declare dso_local i32 @k_init_timer(i32*, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tipc_k_signal(i32, i64) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
