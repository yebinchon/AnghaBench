; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_linkservice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_linkservice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)* }
%struct.sk_buff = type { i8*, i32 }
%struct.dn_scp = type { i8, i8, i8, i32, i32 }

@NSP_FC_MASK = common dso_local global i8 0, align 1
@NSP_FC_SCMC = common dso_local global i8 0, align 1
@DN_DONTSEND = common dso_local global i32 0, align 4
@DN_SEND = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dn_nsp_linkservice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_nsp_linkservice(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dn_scp*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.dn_scp* @DN_SK(%struct.sock* %13)
  store %struct.dn_scp* %14, %struct.dn_scp** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %19 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 4
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @NSP_FC_MASK, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %11, align 1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %156

31:                                               ; preds = %2
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = call zeroext i16 @le16_to_cpu(i32 %34)
  store i16 %35, i16* %6, align 2
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %10, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %7, align 1
  %41 = load i8*, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %8, align 1
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 248
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %156

48:                                               ; preds = %31
  %49 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %50 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i16, i16* %6, align 2
  %53 = call i64 @seq_next(i32 %51, i16 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %153

55:                                               ; preds = %48
  %56 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %57 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %56, i32 0, i32 4
  %58 = call i32 @seq_add(i32* %57, i32 1)
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 4
  switch i32 %61, label %138 [
    i32 0, label %62
    i32 4, label %124
  ]

62:                                               ; preds = %55
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 3
  switch i32 %65, label %123 [
    i32 0, label %66
    i32 1, label %113
    i32 2, label %117
  ]

66:                                               ; preds = %62
  %67 = load i8, i8* %8, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %66
  %71 = load i8, i8* %8, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 0, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %12, align 1
  %75 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %76 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %70
  %83 = load i8, i8* %11, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @NSP_FC_SCMC, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %92 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %91, i32 0, i32 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 %94, %90
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  br label %97

97:                                               ; preds = %88, %82, %70
  br label %112

98:                                               ; preds = %66
  %99 = load i8, i8* %8, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i8, i8* %8, align 1
  %104 = sext i8 %103 to i32
  %105 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %106 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %105, i32 0, i32 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %108, %104
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %106, align 1
  store i32 1, i32* %9, align 4
  br label %111

111:                                              ; preds = %102, %98
  br label %112

112:                                              ; preds = %111, %97
  br label %123

113:                                              ; preds = %62
  %114 = load i32, i32* @DN_DONTSEND, align 4
  %115 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %116 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  br label %123

117:                                              ; preds = %62
  %118 = load i32, i32* @DN_SEND, align 4
  %119 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %120 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.sock*, %struct.sock** %3, align 8
  %122 = call i32 @dn_nsp_output(%struct.sock* %121)
  store i32 1, i32* %9, align 4
  br label %123

123:                                              ; preds = %117, %62, %113, %112
  br label %138

124:                                              ; preds = %55
  %125 = load i8, i8* %8, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i8, i8* %8, align 1
  %130 = sext i8 %129 to i32
  %131 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %132 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %131, i32 0, i32 2
  %133 = load i8, i8* %132, align 2
  %134 = sext i8 %133 to i32
  %135 = add nsw i32 %134, %130
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %132, align 2
  store i32 1, i32* %9, align 4
  br label %137

137:                                              ; preds = %128, %124
  br label %138

138:                                              ; preds = %55, %137, %123
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load %struct.sock*, %struct.sock** %3, align 8
  %143 = load i32, i32* @SOCK_DEAD, align 4
  %144 = call i32 @sock_flag(%struct.sock* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = load %struct.sock*, %struct.sock** %3, align 8
  %148 = getelementptr inbounds %struct.sock, %struct.sock* %147, i32 0, i32 0
  %149 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %148, align 8
  %150 = load %struct.sock*, %struct.sock** %3, align 8
  %151 = call i32 %149(%struct.sock* %150)
  br label %152

152:                                              ; preds = %146, %141, %138
  br label %153

153:                                              ; preds = %152, %48
  %154 = load %struct.sock*, %struct.sock** %3, align 8
  %155 = call i32 @dn_nsp_send_oth_ack(%struct.sock* %154)
  br label %156

156:                                              ; preds = %153, %47, %30
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = call i32 @kfree_skb(%struct.sk_buff* %157)
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i64 @seq_next(i32, i16 zeroext) #1

declare dso_local i32 @seq_add(i32*, i32) #1

declare dso_local i32 @dn_nsp_output(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @dn_nsp_send_oth_ack(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
