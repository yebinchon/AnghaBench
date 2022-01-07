; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_get_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_get_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32, i64, i32 }
%struct.vring_used_elem = type { i32, i64 }
%struct.vhost_log = type { i32 }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unexpected descriptor format for RX: out %d, in %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_virtqueue*, %struct.vring_used_elem*, i32, i32*, %struct.vhost_log*, i32*, i32)* @get_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rx_bufs(%struct.vhost_virtqueue* %0, %struct.vring_used_elem* %1, i32 %2, i32* %3, %struct.vhost_log* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vhost_virtqueue*, align 8
  %10 = alloca %struct.vring_used_elem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vhost_log*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %9, align 8
  store %struct.vring_used_elem* %1, %struct.vring_used_elem** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.vhost_log* %4, %struct.vhost_log** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %110, %7
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ult i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %145

32:                                               ; preds = %30
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* @UIO_MAXIOV, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOBUFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %21, align 4
  br label %176

42:                                               ; preds = %32
  %43 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %44 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %47 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %48 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %54 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @ARRAY_SIZE(i64 %55)
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  %60 = load %struct.vhost_log*, %struct.vhost_log** %13, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @vhost_get_vq_desc(i32 %45, %struct.vhost_virtqueue* %46, i64 %52, i64 %59, i32* %16, i32* %17, %struct.vhost_log* %60, i32* %61)
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp slt i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %42
  br label %176

69:                                               ; preds = %42
  %70 = load i32, i32* %21, align 4
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %73 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %21, align 4
  br label %176

77:                                               ; preds = %69
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %17, align 4
  %82 = icmp ule i32 %81, 0
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ true, %77 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @vq_err(%struct.vhost_virtqueue* %89, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %21, align 4
  br label %176

95:                                               ; preds = %83
  %96 = load %struct.vhost_log*, %struct.vhost_log** %13, align 8
  %97 = ptrtoint %struct.vhost_log* %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %22, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %22, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vhost_log*, %struct.vhost_log** %13, align 8
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %107, i64 %108
  store %struct.vhost_log* %109, %struct.vhost_log** %13, align 8
  br label %110

110:                                              ; preds = %100, %95
  %111 = load i32, i32* %20, align 4
  %112 = load %struct.vring_used_elem*, %struct.vring_used_elem** %10, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %112, i64 %114
  %116 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 8
  %117 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %118 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load i32, i32* %17, align 4
  %124 = call i64 @iov_length(i64 %122, i32 %123)
  %125 = load %struct.vring_used_elem*, %struct.vring_used_elem** %10, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %125, i64 %127
  %129 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %128, i32 0, i32 1
  store i64 %124, i64* %129, align 8
  %130 = load %struct.vring_used_elem*, %struct.vring_used_elem** %10, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %130, i64 %132
  %134 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = sub nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %18, align 4
  %144 = add i32 %143, %142
  store i32 %144, i32* %18, align 4
  br label %23

145:                                              ; preds = %30
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.vring_used_elem*, %struct.vring_used_elem** %10, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %148, i64 %151
  %153 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %147
  store i64 %155, i64* %153, align 8
  %156 = load i32, i32* %18, align 4
  %157 = load i32*, i32** %12, align 8
  store i32 %156, i32* %157, align 4
  %158 = load %struct.vhost_log*, %struct.vhost_log** %13, align 8
  %159 = ptrtoint %struct.vhost_log* %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %145
  %163 = load i32, i32* %22, align 4
  %164 = load i32*, i32** %14, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %145
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* @UIO_MAXIOV, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %21, align 4
  br label %176

174:                                              ; preds = %165
  %175 = load i32, i32* %19, align 4
  store i32 %175, i32* %8, align 4
  br label %181

176:                                              ; preds = %171, %88, %76, %68, %39
  %177 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @vhost_discard_vq_desc(%struct.vhost_virtqueue* %177, i32 %178)
  %180 = load i32, i32* %21, align 4
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %176, %174
  %182 = load i32, i32* %8, align 4
  ret i32 %182
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vhost_get_vq_desc(i32, %struct.vhost_virtqueue*, i64, i64, i32*, i32*, %struct.vhost_log*, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i64) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, i32, i32) #1

declare dso_local i64 @iov_length(i64, i32) #1

declare dso_local i32 @vhost_discard_vq_desc(%struct.vhost_virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
