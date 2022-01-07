; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.usb_skel = type { i32, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @skel_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skel_read(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usb_skel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.usb_skel*
  store %struct.usb_skel* %18, %struct.usb_skel** %10, align 8
  %19 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %20 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %201

27:                                               ; preds = %23
  %28 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %29 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %28, i32 0, i32 6
  %30 = call i32 @mutex_lock_interruptible(i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %201

35:                                               ; preds = %27
  %36 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %37 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %196

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %190, %138, %43
  %45 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %46 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %45, i32 0, i32 8
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %49 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %12, align 4
  %51 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %52 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %51, i32 0, i32 8
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %44
  %57 = load %struct.file*, %struct.file** %6, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @O_NONBLOCK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %196

66:                                               ; preds = %56
  %67 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %68 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %67, i32 0, i32 7
  %69 = call i32 @wait_for_completion_interruptible(i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %196

73:                                               ; preds = %66
  %74 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %75 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %77 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %44
  %79 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %80 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %85 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %84, i32 0, i32 7
  %86 = call i32 @wait_for_completion(i32* %85)
  %87 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %88 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %90 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %93 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %99 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %98, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @EPIPE, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  br label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi i32 [ %105, %104 ], [ %108, %106 ]
  store i32 %110, i32* %11, align 4
  %111 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %112 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  br label %196

113:                                              ; preds = %91
  %114 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %115 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %173

118:                                              ; preds = %113
  %119 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %120 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %123 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %121, %124
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i64 @min(i64 %126, i64 %127)
  store i64 %128, i64* %14, align 8
  %129 = load i64, i64* %13, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %118
  %132 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @skel_do_read_io(%struct.usb_skel* %132, i64 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %196

138:                                              ; preds = %131
  br label %44

139:                                              ; preds = %118
  %140 = load i8*, i8** %7, align 8
  %141 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %142 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %145 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %143, %146
  %148 = load i64, i64* %14, align 8
  %149 = call i64 @copy_to_user(i8* %140, i64 %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load i32, i32* @EFAULT, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %11, align 4
  br label %157

154:                                              ; preds = %139
  %155 = load i64, i64* %14, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i64, i64* %14, align 8
  %159 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %160 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, %158
  store i64 %162, i64* %160, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %8, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %157
  %167 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %14, align 8
  %170 = sub i64 %168, %169
  %171 = call i32 @skel_do_read_io(%struct.usb_skel* %167, i64 %170)
  br label %172

172:                                              ; preds = %166, %157
  br label %195

173:                                              ; preds = %113
  %174 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i32 @skel_do_read_io(%struct.usb_skel* %174, i64 %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %196

180:                                              ; preds = %173
  %181 = load %struct.file*, %struct.file** %6, align 8
  %182 = getelementptr inbounds %struct.file, %struct.file* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* @O_NONBLOCK, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  br label %44

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* @EAGAIN, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %192, %172
  br label %196

196:                                              ; preds = %195, %179, %137, %109, %72, %63, %40
  %197 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %198 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %197, i32 0, i32 6
  %199 = call i32 @mutex_unlock(i32* %198)
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %196, %33, %26
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @skel_do_read_io(%struct.usb_skel*, i64) #1

declare dso_local i64 @copy_to_user(i8*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
