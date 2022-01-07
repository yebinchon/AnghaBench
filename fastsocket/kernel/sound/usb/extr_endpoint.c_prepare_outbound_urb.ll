; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_prepare_outbound_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_prepare_outbound_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i32, i8, %struct.TYPE_3__*, i32, i32, i32 (i32, %struct.urb*)* }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i8*, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_urb_ctx = type { i32, i32*, %struct.urb* }

@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*)* @prepare_outbound_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_outbound_urb(%struct.snd_usb_endpoint* %0, %struct.snd_urb_ctx* %1) #0 {
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca %struct.snd_urb_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  store %struct.snd_urb_ctx* %1, %struct.snd_urb_ctx** %4, align 8
  %10 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %10, i32 0, i32 2
  %12 = load %struct.urb*, %struct.urb** %11, align 8
  store %struct.urb* %12, %struct.urb** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %24 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %196 [
    i32 129, label %26
    i32 128, label %111
  ]

26:                                               ; preds = %2
  %27 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %28 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %27, i32 0, i32 6
  %29 = load i32 (i32, %struct.urb*)*, i32 (i32, %struct.urb*)** %28, align 8
  %30 = icmp ne i32 (i32, %struct.urb*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %33 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %32, i32 0, i32 6
  %34 = load i32 (i32, %struct.urb*)*, i32 (i32, %struct.urb*)** %33, align 8
  %35 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %36 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = call i32 %34(i32 %37, %struct.urb* %38)
  br label %110

40:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %41
  %48 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %57 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul i32 %55, %58
  %60 = load %struct.urb*, %struct.urb** %6, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %59, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %69 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul i32 %67, %70
  %72 = load %struct.urb*, %struct.urb** %6, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %71, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %47
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %41

85:                                               ; preds = %41
  %86 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.urb*, %struct.urb** %6, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %93 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul i32 %91, %94
  %96 = load %struct.urb*, %struct.urb** %6, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.urb*, %struct.urb** %6, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %102 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %106 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul i32 %104, %107
  %109 = call i32 @memset(i8* %100, i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %85, %31
  br label %196

111:                                              ; preds = %2
  %112 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %113 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %112, i32 0, i32 3
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @snd_usb_get_speed(i32 %116)
  %118 = load i32, i32* @USB_SPEED_HIGH, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %111
  %121 = load %struct.urb*, %struct.urb** %6, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 3
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 4, i32* %125, align 4
  %126 = load %struct.urb*, %struct.urb** %6, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 3
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 4
  %131 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %132 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %131, i32 0, i32 2
  %133 = load i8, i8* %132, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 %133, i8* %135, align 1
  %136 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %137 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %136, i32 0, i32 2
  %138 = load i8, i8* %137, align 8
  %139 = zext i8 %138 to i32
  %140 = ashr i32 %139, 8
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  store i8 %141, i8* %143, align 1
  %144 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %145 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %144, i32 0, i32 2
  %146 = load i8, i8* %145, align 8
  %147 = zext i8 %146 to i32
  %148 = ashr i32 %147, 16
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  store i8 %149, i8* %151, align 1
  %152 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %153 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %152, i32 0, i32 2
  %154 = load i8, i8* %153, align 8
  %155 = zext i8 %154 to i32
  %156 = ashr i32 %155, 24
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  store i8 %157, i8* %159, align 1
  br label %195

160:                                              ; preds = %111
  %161 = load %struct.urb*, %struct.urb** %6, align 8
  %162 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 3
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  store i32 3, i32* %165, align 4
  %166 = load %struct.urb*, %struct.urb** %6, align 8
  %167 = getelementptr inbounds %struct.urb, %struct.urb* %166, i32 0, i32 3
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  %171 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %172 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %171, i32 0, i32 2
  %173 = load i8, i8* %172, align 8
  %174 = zext i8 %173 to i32
  %175 = ashr i32 %174, 2
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8 %176, i8* %178, align 1
  %179 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %180 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %179, i32 0, i32 2
  %181 = load i8, i8* %180, align 8
  %182 = zext i8 %181 to i32
  %183 = ashr i32 %182, 10
  %184 = trunc i32 %183 to i8
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8 %184, i8* %186, align 1
  %187 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %188 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %187, i32 0, i32 2
  %189 = load i8, i8* %188, align 8
  %190 = zext i8 %189 to i32
  %191 = ashr i32 %190, 18
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %7, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  store i8 %192, i8* %194, align 1
  br label %195

195:                                              ; preds = %160, %120
  br label %196

196:                                              ; preds = %2, %195, %110
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snd_usb_get_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
