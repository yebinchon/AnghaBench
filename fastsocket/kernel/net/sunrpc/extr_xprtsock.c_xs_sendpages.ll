; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_sendpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_sendpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.xdr_buf = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOTSOCK = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, %struct.xdr_buf*, i32, i32)* @xs_sendpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_sendpages(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, %struct.xdr_buf* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xdr_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.xdr_buf* %3, %struct.xdr_buf** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %20 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.socket*, %struct.socket** %8, align 8
  %25 = icmp ne %struct.socket* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOTSOCK, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %170

33:                                               ; preds = %6
  %34 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %35 = load %struct.socket*, %struct.socket** %8, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store %struct.sockaddr* null, %struct.sockaddr** %9, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %44 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %42, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %52 = icmp ne %struct.sockaddr* %51, null
  br i1 %52, label %53, label %88

53:                                               ; preds = %50, %41
  %54 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %55 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %14, align 4
  %65 = load %struct.socket*, %struct.socket** %8, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %69 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 0
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @xs_send_kvec(%struct.socket* %65, %struct.sockaddr* %66, i32 %67, %struct.TYPE_2__* %71, i32 %72, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %53
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %53
  br label %156

84:                                               ; preds = %79
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %97

88:                                               ; preds = %50
  %89 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %90 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %89, i32 0, i32 3
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %88, %84
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %100 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %97
  %104 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %105 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sub i32 %106, %107
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sub i32 %110, %109
  store i32 %111, i32* %14, align 4
  %112 = load %struct.socket*, %struct.socket** %8, align 8
  %113 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @xs_send_pagedata(%struct.socket* %112, %struct.xdr_buf* %113, i32 %114, i32 %117, i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %103
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %103
  br label %156

127:                                              ; preds = %122
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %137

131:                                              ; preds = %97
  %132 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %133 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = sub i32 %135, %134
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %131, %127
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %140 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp uge i32 %138, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %7, align 4
  br label %170

148:                                              ; preds = %137
  %149 = load %struct.socket*, %struct.socket** %8, align 8
  %150 = load %struct.xdr_buf*, %struct.xdr_buf** %11, align 8
  %151 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 0
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @xs_send_kvec(%struct.socket* %149, %struct.sockaddr* null, i32 0, %struct.TYPE_2__* %153, i32 %154, i32 0)
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %148, %126, %83
  %157 = load i32, i32* %16, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %7, align 4
  br label %170

161:                                              ; preds = %156
  %162 = load i32, i32* %15, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %16, align 4
  br label %168

168:                                              ; preds = %164, %161
  %169 = load i32, i32* %16, align 4
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %168, %159, %146, %30
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @xs_send_kvec(%struct.socket*, %struct.sockaddr*, i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @xs_send_pagedata(%struct.socket*, %struct.xdr_buf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
