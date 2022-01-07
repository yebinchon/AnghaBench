; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_file_aio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_file_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { i32, %struct.address_space* }
%struct.address_space = type { %struct.TYPE_5__*, %struct.inode* }
%struct.TYPE_5__ = type { i64 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)* }
%struct.inode = type { i32 }
%struct.iovec = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VERIFY_WRITE = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@file_read_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generic_file_aio_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.address_space*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 1
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %10, align 8
  store i64 0, i64* %12, align 8
  %23 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 0
  store i64* %24, i64** %14, align 8
  store i64 0, i64* %13, align 8
  %25 = load %struct.iovec*, %struct.iovec** %7, align 8
  %26 = load i32, i32* @VERIFY_WRITE, align 4
  %27 = call i64 @generic_segment_checks(%struct.iovec* %25, i64* %8, i64* %13, i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %5, align 8
  br label %190

32:                                               ; preds = %4
  %33 = load %struct.file*, %struct.file** %10, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @O_DIRECT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %106

39:                                               ; preds = %32
  %40 = load %struct.file*, %struct.file** %10, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 1
  %42 = load %struct.address_space*, %struct.address_space** %41, align 8
  store %struct.address_space* %42, %struct.address_space** %16, align 8
  %43 = load %struct.address_space*, %struct.address_space** %16, align 8
  %44 = getelementptr inbounds %struct.address_space, %struct.address_space* %43, i32 0, i32 1
  %45 = load %struct.inode*, %struct.inode** %44, align 8
  store %struct.inode* %45, %struct.inode** %17, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %188

49:                                               ; preds = %39
  %50 = load %struct.inode*, %struct.inode** %17, align 8
  %51 = call i64 @i_size_read(%struct.inode* %50)
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %49
  %56 = load %struct.address_space*, %struct.address_space** %16, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.iovec*, %struct.iovec** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @iov_length(%struct.iovec* %59, i64 %60)
  %62 = add nsw i64 %58, %61
  %63 = sub nsw i64 %62, 1
  %64 = call i64 @filemap_write_and_wait_range(%struct.address_space* %56, i64 %57, i64 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %55
  %68 = load %struct.address_space*, %struct.address_space** %16, align 8
  %69 = getelementptr inbounds %struct.address_space, %struct.address_space* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)*, i64 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)** %71, align 8
  %73 = load i32, i32* @READ, align 4
  %74 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %75 = load %struct.iovec*, %struct.iovec** %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i64 %72(i32 %73, %struct.kiocb* %74, %struct.iovec* %75, i64 %76, i64 %77)
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %67, %55
  %80 = load i64, i64* %11, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %83, %84
  %86 = load i64*, i64** %14, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %13, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %82, %79
  %91 = load i64, i64* %11, align 8
  %92 = icmp ult i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i64*, i64** %14, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96, %93, %90
  %102 = load %struct.file*, %struct.file** %10, align 8
  %103 = call i32 @file_accessed(%struct.file* %102)
  br label %188

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %49
  br label %106

106:                                              ; preds = %105, %32
  %107 = load i64, i64* %11, align 8
  store i64 %107, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %108

108:                                              ; preds = %184, %106
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %187

112:                                              ; preds = %108
  store i64 0, i64* %19, align 8
  %113 = load i64, i64* %13, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.iovec*, %struct.iovec** %7, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.iovec, %struct.iovec* %117, i64 %118
  %120 = getelementptr inbounds %struct.iovec, %struct.iovec* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ugt i64 %116, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.iovec*, %struct.iovec** %7, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds %struct.iovec, %struct.iovec* %124, i64 %125
  %127 = getelementptr inbounds %struct.iovec, %struct.iovec* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %13, align 8
  br label %184

131:                                              ; preds = %115
  %132 = load i64, i64* %13, align 8
  store i64 %132, i64* %19, align 8
  store i64 0, i64* %13, align 8
  br label %133

133:                                              ; preds = %131, %112
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i64 0, i64* %134, align 8
  %135 = load %struct.iovec*, %struct.iovec** %7, align 8
  %136 = load i64, i64* %12, align 8
  %137 = getelementptr inbounds %struct.iovec, %struct.iovec* %135, i64 %136
  %138 = getelementptr inbounds %struct.iovec, %struct.iovec* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %19, align 8
  %141 = add nsw i64 %139, %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.iovec*, %struct.iovec** %7, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds %struct.iovec, %struct.iovec* %144, i64 %145
  %147 = getelementptr inbounds %struct.iovec, %struct.iovec* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %19, align 8
  %150 = sub i64 %148, %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i64 %150, i64* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %133
  br label %184

156:                                              ; preds = %133
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i64 0, i64* %157, align 8
  %158 = load %struct.file*, %struct.file** %10, align 8
  %159 = load i64*, i64** %14, align 8
  %160 = load i32, i32* @file_read_actor, align 4
  %161 = call i32 @do_generic_file_read(%struct.file* %158, i64* %159, %struct.TYPE_7__* %18, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %156
  %170 = load i64, i64* %11, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %176

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  br label %176

176:                                              ; preds = %173, %172
  %177 = phi i64 [ %170, %172 ], [ %175, %173 ]
  store i64 %177, i64* %11, align 8
  br label %187

178:                                              ; preds = %156
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %187

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %155, %123
  %185 = load i64, i64* %12, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %12, align 8
  br label %108

187:                                              ; preds = %182, %176, %108
  br label %188

188:                                              ; preds = %187, %101, %48
  %189 = load i64, i64* %11, align 8
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %188, %30
  %191 = load i64, i64* %5, align 8
  ret i64 %191
}

declare dso_local i64 @generic_segment_checks(%struct.iovec*, i64*, i64*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i64, i64) #1

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local i32 @do_generic_file_read(%struct.file*, i64*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
