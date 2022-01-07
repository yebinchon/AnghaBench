; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_anc_data_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_anc_data_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i64 }
%struct.tipc_msg = type { i32 }
%struct.tipc_port = type { i32, i32 }

@SOL_TIPC = common dso_local global i32 0, align 4
@TIPC_ERRINFO = common dso_local global i32 0, align 4
@TIPC_RETDATA = common dso_local global i32 0, align 4
@TIPC_DIRECT_MSG = common dso_local global i32 0, align 4
@TIPC_DESTNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, %struct.tipc_msg*, %struct.tipc_port*)* @anc_data_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anc_data_recv(%struct.msghdr* %0, %struct.tipc_msg* %1, %struct.tipc_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.tipc_port*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %5, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %6, align 8
  store %struct.tipc_port* %2, %struct.tipc_port** %7, align 8
  %13 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %14 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %127

21:                                               ; preds = %3
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %23 = icmp ne %struct.tipc_msg* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %26 = call i32 @msg_errcode(%struct.tipc_msg* %25)
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %37 = call i32 @msg_data_sz(%struct.tipc_msg* %36)
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %40 = load i32, i32* @SOL_TIPC, align 4
  %41 = load i32, i32* @TIPC_ERRINFO, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %43 = call i32 @put_cmsg(%struct.msghdr* %39, i32 %40, i32 %41, i32 8, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %4, align 4
  br label %127

47:                                               ; preds = %33
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %53 = load i32, i32* @SOL_TIPC, align 4
  %54 = load i32, i32* @TIPC_RETDATA, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %58 = call i32* @msg_data(%struct.tipc_msg* %57)
  %59 = call i32 @put_cmsg(%struct.msghdr* %52, i32 %53, i32 %54, i32 %56, i32* %58)
  store i32 %59, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %127

63:                                               ; preds = %51, %47
  br label %64

64:                                               ; preds = %63, %28
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %66 = icmp ne %struct.tipc_msg* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %69 = call i32 @msg_type(%struct.tipc_msg* %68)
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @TIPC_DIRECT_MSG, align 4
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i32 [ %69, %67 ], [ %71, %70 ]
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %113 [
    i32 128, label %75
    i32 129, label %85
    i32 130, label %95
  ]

75:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  %76 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %77 = call i32 @msg_nametype(%struct.tipc_msg* %76)
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %80 = call i32 @msg_namelower(%struct.tipc_msg* %79)
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %83 = call i32 @msg_namelower(%struct.tipc_msg* %82)
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %83, i32* %84, align 4
  br label %114

85:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  %86 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %87 = call i32 @msg_nametype(%struct.tipc_msg* %86)
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %87, i32* %88, align 4
  %89 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %90 = call i32 @msg_namelower(%struct.tipc_msg* %89)
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %90, i32* %91, align 4
  %92 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %93 = call i32 @msg_nameupper(%struct.tipc_msg* %92)
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %93, i32* %94, align 4
  br label %114

95:                                               ; preds = %72
  %96 = load %struct.tipc_port*, %struct.tipc_port** %7, align 8
  %97 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load %struct.tipc_port*, %struct.tipc_port** %7, align 8
  %102 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %103, i32* %104, align 4
  %105 = load %struct.tipc_port*, %struct.tipc_port** %7, align 8
  %106 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.tipc_port*, %struct.tipc_port** %7, align 8
  %110 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %111, i32* %112, align 4
  br label %114

113:                                              ; preds = %72
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %95, %85, %75
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %119 = load i32, i32* @SOL_TIPC, align 4
  %120 = load i32, i32* @TIPC_DESTNAME, align 4
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %122 = call i32 @put_cmsg(%struct.msghdr* %118, i32 %119, i32 %120, i32 12, i32* %121)
  store i32 %122, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %127

126:                                              ; preds = %117, %114
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %124, %61, %45, %20
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i32*) #1

declare dso_local i32* @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i32 @msg_namelower(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nameupper(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
