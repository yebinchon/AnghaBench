; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_send_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_send_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.xdr_buf = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.page** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@MSG_MORE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_send_common(%struct.socket* %0, %struct.xdr_buf* %1, %struct.page* %2, i64 %3, %struct.page* %4, i64 %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.page* %4, %struct.page** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %22 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %21, i32 0, i32 5
  %23 = load %struct.page**, %struct.page*** %22, align 8
  store %struct.page** %23, %struct.page*** %15, align 8
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %25 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %16, align 8
  %27 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %28 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* @MSG_MORE, align 4
  store i32 %30, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %36 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %35, i32 0, i32 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %42, %6
  %44 = load %struct.socket*, %struct.socket** %7, align 8
  %45 = load %struct.page*, %struct.page** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %48 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @kernel_sendpage(%struct.socket* %44, %struct.page* %45, i64 %46, i32 %52, i32 %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %57 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %56, i32 0, i32 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %55, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %168

64:                                               ; preds = %43
  %65 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %66 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %65, i32 0, i32 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %19, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %168

76:                                               ; preds = %64
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = load i64, i64* %16, align 8
  %79 = sub i64 %77, %78
  %80 = load i32, i32* %17, align 4
  %81 = zext i32 %80 to i64
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i64, i64* %16, align 8
  %86 = sub i64 %84, %85
  br label %90

87:                                               ; preds = %76
  %88 = load i32, i32* %17, align 4
  %89 = zext i32 %88 to i64
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i64 [ %86, %83 ], [ %89, %87 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %136, %90
  %94 = load i32, i32* %17, align 4
  %95 = icmp ugt i32 %94, 0
  br i1 %95, label %96, label %141

96:                                               ; preds = %93
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 0, i32* %18, align 4
  br label %101

101:                                              ; preds = %100, %96
  %102 = load %struct.socket*, %struct.socket** %7, align 8
  %103 = load %struct.page**, %struct.page*** %15, align 8
  %104 = load %struct.page*, %struct.page** %103, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @kernel_sendpage(%struct.socket* %102, %struct.page* %104, i64 %105, i32 %106, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %20, align 4
  br label %115

115:                                              ; preds = %111, %101
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %168

120:                                              ; preds = %115
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %19, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %17, align 4
  %126 = sub i32 %125, %124
  store i32 %126, i32* %17, align 4
  %127 = load i64, i64* @PAGE_SIZE, align 8
  %128 = load i32, i32* %17, align 4
  %129 = zext i32 %128 to i64
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = load i64, i64* @PAGE_SIZE, align 8
  br label %136

133:                                              ; preds = %120
  %134 = load i32, i32* %17, align 4
  %135 = zext i32 %134 to i64
  br label %136

136:                                              ; preds = %133, %131
  %137 = phi i64 [ %132, %131 ], [ %135, %133 ]
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %139 = load %struct.page**, %struct.page*** %15, align 8
  %140 = getelementptr inbounds %struct.page*, %struct.page** %139, i32 1
  store %struct.page** %140, %struct.page*** %15, align 8
  br label %93

141:                                              ; preds = %93
  %142 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %143 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %142, i32 0, i32 3
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %141
  %150 = load %struct.socket*, %struct.socket** %7, align 8
  %151 = load %struct.page*, %struct.page** %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %154 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %153, i32 0, i32 3
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @kernel_sendpage(%struct.socket* %150, %struct.page* %151, i64 %152, i32 %158, i32 0)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %149
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %20, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %20, align 4
  br label %166

166:                                              ; preds = %162, %149
  br label %167

167:                                              ; preds = %166, %141
  br label %168

168:                                              ; preds = %167, %119, %75, %63
  %169 = load i32, i32* %20, align 4
  ret i32 %169
}

declare dso_local i32 @kernel_sendpage(%struct.socket*, %struct.page*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
