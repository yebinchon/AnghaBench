; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32*, i32, i32, i32 }
%struct.tipc_msg = type { i32 }

@MSG_FRAGMENTER = common dso_local global i64 0, align 8
@FIRST_FRAGMENT = common dso_local global i64 0, align 8
@TIMEOUT_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*)* @link_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_timeout(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca %struct.tipc_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %2, align 8
  %5 = load %struct.link*, %struct.link** %2, align 8
  %6 = getelementptr inbounds %struct.link, %struct.link* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @tipc_node_lock(i32 %7)
  %9 = load %struct.link*, %struct.link** %2, align 8
  %10 = getelementptr inbounds %struct.link, %struct.link* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.link*, %struct.link** %2, align 8
  %13 = getelementptr inbounds %struct.link, %struct.link* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %11
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 8
  %19 = load %struct.link*, %struct.link** %2, align 8
  %20 = getelementptr inbounds %struct.link, %struct.link* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.link*, %struct.link** %2, align 8
  %25 = getelementptr inbounds %struct.link, %struct.link* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.link*, %struct.link** %2, align 8
  %28 = getelementptr inbounds %struct.link, %struct.link* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load %struct.link*, %struct.link** %2, align 8
  %34 = getelementptr inbounds %struct.link, %struct.link* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.link*, %struct.link** %2, align 8
  %37 = getelementptr inbounds %struct.link, %struct.link* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.link*, %struct.link** %2, align 8
  %41 = getelementptr inbounds %struct.link, %struct.link* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %159

44:                                               ; preds = %39
  %45 = load %struct.link*, %struct.link** %2, align 8
  %46 = getelementptr inbounds %struct.link, %struct.link* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.tipc_msg* @buf_msg(i64 %47)
  store %struct.tipc_msg* %48, %struct.tipc_msg** %3, align 8
  %49 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %50 = call i32 @msg_size(%struct.tipc_msg* %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %52 = call i64 @msg_user(%struct.tipc_msg* %51)
  %53 = load i64, i64* @MSG_FRAGMENTER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %57 = call i64 @msg_type(%struct.tipc_msg* %56)
  %58 = load i64, i64* @FIRST_FRAGMENT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %62 = call %struct.tipc_msg* @msg_get_wrapped(%struct.tipc_msg* %61)
  %63 = call i32 @msg_size(%struct.tipc_msg* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %55, %44
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %158

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.link*, %struct.link** %2, align 8
  %70 = getelementptr inbounds %struct.link, %struct.link* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %68
  store i32 %73, i32* %71, align 8
  %74 = load %struct.link*, %struct.link** %2, align 8
  %75 = getelementptr inbounds %struct.link, %struct.link* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp sle i32 %79, 64
  br i1 %80, label %81, label %89

81:                                               ; preds = %67
  %82 = load %struct.link*, %struct.link** %2, align 8
  %83 = getelementptr inbounds %struct.link, %struct.link* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %157

89:                                               ; preds = %67
  %90 = load i32, i32* %4, align 4
  %91 = icmp sle i32 %90, 256
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.link*, %struct.link** %2, align 8
  %94 = getelementptr inbounds %struct.link, %struct.link* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %156

100:                                              ; preds = %89
  %101 = load i32, i32* %4, align 4
  %102 = icmp sle i32 %101, 1024
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.link*, %struct.link** %2, align 8
  %105 = getelementptr inbounds %struct.link, %struct.link* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %155

111:                                              ; preds = %100
  %112 = load i32, i32* %4, align 4
  %113 = icmp sle i32 %112, 4096
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.link*, %struct.link** %2, align 8
  %116 = getelementptr inbounds %struct.link, %struct.link* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %154

122:                                              ; preds = %111
  %123 = load i32, i32* %4, align 4
  %124 = icmp sle i32 %123, 16384
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load %struct.link*, %struct.link** %2, align 8
  %127 = getelementptr inbounds %struct.link, %struct.link* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %153

133:                                              ; preds = %122
  %134 = load i32, i32* %4, align 4
  %135 = icmp sle i32 %134, 32768
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.link*, %struct.link** %2, align 8
  %138 = getelementptr inbounds %struct.link, %struct.link* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %152

144:                                              ; preds = %133
  %145 = load %struct.link*, %struct.link** %2, align 8
  %146 = getelementptr inbounds %struct.link, %struct.link* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 6
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %144, %136
  br label %153

153:                                              ; preds = %152, %125
  br label %154

154:                                              ; preds = %153, %114
  br label %155

155:                                              ; preds = %154, %103
  br label %156

156:                                              ; preds = %155, %92
  br label %157

157:                                              ; preds = %156, %81
  br label %158

158:                                              ; preds = %157, %64
  br label %159

159:                                              ; preds = %158, %39
  %160 = load %struct.link*, %struct.link** %2, align 8
  %161 = call i32 @link_check_defragm_bufs(%struct.link* %160)
  %162 = load %struct.link*, %struct.link** %2, align 8
  %163 = load i32, i32* @TIMEOUT_EVT, align 4
  %164 = call i32 @link_state_event(%struct.link* %162, i32 %163)
  %165 = load %struct.link*, %struct.link** %2, align 8
  %166 = getelementptr inbounds %struct.link, %struct.link* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load %struct.link*, %struct.link** %2, align 8
  %171 = call i32 @tipc_link_push_queue(%struct.link* %170)
  br label %172

172:                                              ; preds = %169, %159
  %173 = load %struct.link*, %struct.link** %2, align 8
  %174 = getelementptr inbounds %struct.link, %struct.link* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @tipc_node_unlock(i32 %175)
  ret void
}

declare dso_local i32 @tipc_node_lock(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(i64) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @msg_get_wrapped(%struct.tipc_msg*) #1

declare dso_local i32 @link_check_defragm_bufs(%struct.link*) #1

declare dso_local i32 @link_state_event(%struct.link*, i32) #1

declare dso_local i32 @tipc_link_push_queue(%struct.link*) #1

declare dso_local i32 @tipc_node_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
