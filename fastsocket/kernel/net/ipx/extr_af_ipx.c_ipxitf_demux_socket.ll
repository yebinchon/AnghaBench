; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_demux_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_demux_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipxhdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }

@ipx_primary_net = common dso_local global %struct.ipx_interface* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipx_interface*, %struct.sk_buff*, i32)* @ipxitf_demux_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipxitf_demux_socket(%struct.ipx_interface* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ipx_interface*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipxhdr*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ipx_interface* %0, %struct.ipx_interface** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.ipxhdr* @ipx_hdr(%struct.sk_buff* %14)
  store %struct.ipxhdr* %15, %struct.ipxhdr** %7, align 8
  store %struct.sock* null, %struct.sock** %8, align 8
  store %struct.sock* null, %struct.sock** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %16 = load %struct.ipx_interface*, %struct.ipx_interface** %4, align 8
  %17 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  %18 = icmp eq %struct.ipx_interface* %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.ipxhdr*, %struct.ipxhdr** %7, align 8
  %21 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = icmp eq i32 %24, 1105
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.ipx_interface*, %struct.ipx_interface** %4, align 8
  %28 = load %struct.ipxhdr*, %struct.ipxhdr** %7, align 8
  %29 = call %struct.sock* @ncp_connection_hack(%struct.ipx_interface* %27, %struct.ipxhdr* %28)
  store %struct.sock* %29, %struct.sock** %8, align 8
  br label %30

30:                                               ; preds = %26, %19, %3
  %31 = load %struct.sock*, %struct.sock** %8, align 8
  %32 = icmp ne %struct.sock* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.ipx_interface*, %struct.ipx_interface** %4, align 8
  %35 = load %struct.ipxhdr*, %struct.ipxhdr** %7, align 8
  %36 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.sock* @ipxitf_find_socket(%struct.ipx_interface* %34, i32 %38)
  store %struct.sock* %39, %struct.sock** %8, align 8
  br label %40

40:                                               ; preds = %33, %30
  %41 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  %42 = icmp ne %struct.ipx_interface* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load %struct.ipx_interface*, %struct.ipx_interface** %4, align 8
  %45 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  %46 = icmp ne %struct.ipx_interface* %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load %struct.ipxhdr*, %struct.ipxhdr** %7, align 8
  %49 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 1106
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 1107
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 1110
  br i1 %60, label %61, label %68

61:                                               ; preds = %58, %55, %47
  %62 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  %63 = load %struct.ipxhdr*, %struct.ipxhdr** %7, align 8
  %64 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.sock* @ipxitf_find_socket(%struct.ipx_interface* %62, i32 %66)
  store %struct.sock* %67, %struct.sock** %9, align 8
  br label %68

68:                                               ; preds = %61, %58
  br label %69

69:                                               ; preds = %68, %43, %40
  store i32 0, i32* %12, align 4
  %70 = load %struct.sock*, %struct.sock** %8, align 8
  %71 = icmp ne %struct.sock* %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load %struct.sock*, %struct.sock** %9, align 8
  %74 = icmp ne %struct.sock* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %141

82:                                               ; preds = %72, %69
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %86, i32 %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %10, align 8
  br label %91

89:                                               ; preds = %82
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %90, %struct.sk_buff** %10, align 8
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = icmp ne %struct.sk_buff* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %128

97:                                               ; preds = %91
  %98 = load %struct.sock*, %struct.sock** %8, align 8
  %99 = icmp ne %struct.sock* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.sock*, %struct.sock** %9, align 8
  %102 = icmp ne %struct.sock* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %105 = load i32, i32* @GFP_ATOMIC, align 4
  %106 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %104, i32 %105)
  store %struct.sk_buff* %106, %struct.sk_buff** %11, align 8
  br label %109

107:                                              ; preds = %100, %97
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %108, %struct.sk_buff** %11, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = load %struct.sock*, %struct.sock** %8, align 8
  %111 = icmp ne %struct.sock* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.sock*, %struct.sock** %8, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %115 = call i32 @ipxitf_def_skb_handler(%struct.sock* %113, %struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %112, %109
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  br label %128

120:                                              ; preds = %116
  %121 = load %struct.sock*, %struct.sock** %9, align 8
  %122 = icmp ne %struct.sock* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.sock*, %struct.sock** %9, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %126 = call i32 @ipxitf_def_skb_handler(%struct.sock* %124, %struct.sk_buff* %125)
  br label %127

127:                                              ; preds = %123, %120
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %127, %119, %96
  %129 = load %struct.sock*, %struct.sock** %8, align 8
  %130 = icmp ne %struct.sock* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.sock*, %struct.sock** %8, align 8
  %133 = call i32 @sock_put(%struct.sock* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load %struct.sock*, %struct.sock** %9, align 8
  %136 = icmp ne %struct.sock* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.sock*, %struct.sock** %9, align 8
  %139 = call i32 @sock_put(%struct.sock* %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %81
  %142 = load i32, i32* %12, align 4
  ret i32 %142
}

declare dso_local %struct.ipxhdr* @ipx_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sock* @ncp_connection_hack(%struct.ipx_interface*, %struct.ipxhdr*) #1

declare dso_local %struct.sock* @ipxitf_find_socket(%struct.ipx_interface*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipxitf_def_skb_handler(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
