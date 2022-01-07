; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_dev_alloc_iovecs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_dev_alloc_iovecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vhost_zcopy_mask = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_dev*)* @vhost_dev_alloc_iovecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_dev_alloc_iovecs(%struct.vhost_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %117, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %120

12:                                               ; preds = %6
  %13 = load i32, i32* @UIO_MAXIOV, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 1, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  %19 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %20 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i8* %18, i8** %25, align 8
  %26 = load i32, i32* @UIO_MAXIOV, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 1, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  %32 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %33 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i8* %31, i8** %38, align 8
  %39 = load i32, i32* @UIO_MAXIOV, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 1, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kmalloc(i32 %42, i32 %43)
  %45 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %46 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %44, i8** %51, align 8
  %52 = load i32, i32* @vhost_zcopy_mask, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %12
  %59 = load i32, i32* @UIO_MAXIOV, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 1, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kmalloc(i32 %62, i32 %63)
  %65 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %66 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %64, i8** %71, align 8
  br label %72

72:                                               ; preds = %58, %12
  %73 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %74 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %115

82:                                               ; preds = %72
  %83 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %84 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %115

92:                                               ; preds = %82
  %93 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %94 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %92
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %107 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %105, %92, %82, %72
  br label %121

116:                                              ; preds = %105, %102
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %6

120:                                              ; preds = %6
  store i64 0, i64* %2, align 8
  br label %139

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %133, %121
  %123 = load i32, i32* %4, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %127 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = call i32 @vhost_vq_free_iovecs(%struct.TYPE_2__* %131)
  br label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %4, align 4
  br label %122

136:                                              ; preds = %122
  %137 = load i64, i64* @ENOMEM, align 8
  %138 = sub nsw i64 0, %137
  store i64 %138, i64* %2, align 8
  br label %139

139:                                              ; preds = %136, %120
  %140 = load i64, i64* %2, align 8
  ret i64 %140
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @vhost_vq_free_iovecs(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
