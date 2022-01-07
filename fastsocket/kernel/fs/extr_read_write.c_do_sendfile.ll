; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_do_sendfile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_do_sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EBADF = common dso_local global i64 0, align 8
@FMODE_READ = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i64 0, align 8
@FMODE_PREAD = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*, i64, i64)* @do_sendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_sendfile(i32 %0, i32 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load i64, i64* @EBADF, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %16, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.file* @fget_light(i32 %22, i32* %17)
  store %struct.file* %23, %struct.file** %11, align 8
  %24 = load %struct.file*, %struct.file** %11, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %177

27:                                               ; preds = %5
  %28 = load %struct.file*, %struct.file** %11, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FMODE_READ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %173

35:                                               ; preds = %27
  %36 = load i64, i64* @ESPIPE, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %16, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.file*, %struct.file** %11, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 1
  store i64* %42, i64** %8, align 8
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.file*, %struct.file** %11, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FMODE_PREAD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %173

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* @READ, align 4
  %54 = load %struct.file*, %struct.file** %11, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @rw_verify_area(i32 %53, %struct.file* %54, i64* %55, i64 %56)
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp ult i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %173

61:                                               ; preds = %52
  %62 = load i64, i64* %16, align 8
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* @EBADF, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %16, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call %struct.file* @fget_light(i32 %65, i32* %18)
  store %struct.file* %66, %struct.file** %12, align 8
  %67 = load %struct.file*, %struct.file** %12, align 8
  %68 = icmp ne %struct.file* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %173

70:                                               ; preds = %61
  %71 = load %struct.file*, %struct.file** %12, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FMODE_WRITE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %169

78:                                               ; preds = %70
  %79 = load i64, i64* @EINVAL, align 8
  %80 = sub i64 0, %79
  store i64 %80, i64* %16, align 8
  %81 = load %struct.file*, %struct.file** %11, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.inode*, %struct.inode** %85, align 8
  store %struct.inode* %86, %struct.inode** %13, align 8
  %87 = load %struct.file*, %struct.file** %12, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.inode*, %struct.inode** %91, align 8
  store %struct.inode* %92, %struct.inode** %14, align 8
  %93 = load i32, i32* @WRITE, align 4
  %94 = load %struct.file*, %struct.file** %12, align 8
  %95 = load %struct.file*, %struct.file** %12, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 1
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @rw_verify_area(i32 %93, %struct.file* %94, i64* %96, i64 %97)
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %16, align 8
  %100 = icmp ult i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %78
  br label %169

102:                                              ; preds = %78
  %103 = load i64, i64* %16, align 8
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %102
  %107 = load %struct.inode*, %struct.inode** %13, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.inode*, %struct.inode** %14, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @min(i32 %111, i32 %116)
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %106, %102
  %119 = load i64*, i64** %8, align 8
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %15, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %121, %122
  %124 = load i64, i64* %10, align 8
  %125 = icmp ugt i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %118
  %130 = load i64, i64* @EOVERFLOW, align 8
  %131 = sub i64 0, %130
  store i64 %131, i64* %16, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %169

136:                                              ; preds = %129
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %15, align 8
  %139 = sub nsw i64 %137, %138
  store i64 %139, i64* %9, align 8
  br label %140

140:                                              ; preds = %136, %118
  store i32 0, i32* %19, align 4
  %141 = load %struct.file*, %struct.file** %11, align 8
  %142 = load i64*, i64** %8, align 8
  %143 = load %struct.file*, %struct.file** %12, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i64 @do_splice_direct(%struct.file* %141, i64* %142, %struct.file* %143, i64 %144, i32 %145)
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %16, align 8
  %148 = icmp ugt i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %140
  %150 = load i32, i32* @current, align 4
  %151 = load i64, i64* %16, align 8
  %152 = call i32 @add_rchar(i32 %150, i64 %151)
  %153 = load i32, i32* @current, align 4
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @add_wchar(i32 %153, i64 %154)
  br label %156

156:                                              ; preds = %149, %140
  %157 = load i32, i32* @current, align 4
  %158 = call i32 @inc_syscr(i32 %157)
  %159 = load i32, i32* @current, align 4
  %160 = call i32 @inc_syscw(i32 %159)
  %161 = load i64*, i64** %8, align 8
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %10, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i64, i64* @EOVERFLOW, align 8
  %167 = sub i64 0, %166
  store i64 %167, i64* %16, align 8
  br label %168

168:                                              ; preds = %165, %156
  br label %169

169:                                              ; preds = %168, %135, %101, %77
  %170 = load %struct.file*, %struct.file** %12, align 8
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @fput_light(%struct.file* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %69, %60, %50, %34
  %174 = load %struct.file*, %struct.file** %11, align 8
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @fput_light(%struct.file* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %26
  %178 = load i64, i64* %16, align 8
  ret i64 %178
}

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i64 @rw_verify_area(i32, %struct.file*, i64*, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @do_splice_direct(%struct.file*, i64*, %struct.file*, i64, i32) #1

declare dso_local i32 @add_rchar(i32, i64) #1

declare dso_local i32 @add_wchar(i32, i64) #1

declare dso_local i32 @inc_syscr(i32) #1

declare dso_local i32 @inc_syscw(i32) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
