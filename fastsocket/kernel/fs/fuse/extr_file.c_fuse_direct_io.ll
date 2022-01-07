; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_direct_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_direct_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.fuse_io_priv = type { i32, %struct.file* }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_conn* }
%struct.fuse_conn = type { i64, i64 }
%struct.iovec = type { i32 }
%struct.fuse_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iov_iter = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fuse_direct_io(%struct.fuse_io_priv* %0, %struct.iovec* %1, i64 %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.fuse_io_priv*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.fuse_file*, align 8
  %16 = alloca %struct.fuse_conn*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.fuse_req*, align 8
  %21 = alloca %struct.iov_iter, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.fuse_io_priv* %0, %struct.fuse_io_priv** %8, align 8
  store %struct.iovec* %1, %struct.iovec** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %27 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %26, i32 0, i32 1
  %28 = load %struct.file*, %struct.file** %27, align 8
  store %struct.file* %28, %struct.file** %14, align 8
  %29 = load %struct.file*, %struct.file** %14, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load %struct.fuse_file*, %struct.fuse_file** %30, align 8
  store %struct.fuse_file* %31, %struct.fuse_file** %15, align 8
  %32 = load %struct.fuse_file*, %struct.fuse_file** %15, align 8
  %33 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %32, i32 0, i32 0
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %33, align 8
  store %struct.fuse_conn* %34, %struct.fuse_conn** %16, align 8
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %39 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  br label %45

41:                                               ; preds = %6
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %43 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i64 [ %40, %37 ], [ %44, %41 ]
  store i64 %46, i64* %17, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %49 = load %struct.iovec*, %struct.iovec** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @iov_iter_init(%struct.iov_iter* %21, %struct.iovec* %49, i64 %50, i64 %51, i32 0)
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %54 = call i32 @fuse_iter_npages(%struct.iov_iter* %21)
  %55 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %53, i32 %54)
  store %struct.fuse_req* %55, %struct.fuse_req** %20, align 8
  %56 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %57 = call i64 @IS_ERR(%struct.fuse_req* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %61 = call i64 @PTR_ERR(%struct.fuse_req* %60)
  store i64 %61, i64* %7, align 8
  br label %181

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %164, %62
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %165

66:                                               ; preds = %63
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %23, align 4
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %17, align 8
  %72 = call i64 @min(i64 %70, i64 %71)
  store i64 %72, i64* %24, align 8
  %73 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @fuse_get_user_pages(%struct.fuse_req* %73, %struct.iov_iter* %21, i64* %24, i32 %74)
  store i32 %75, i32* %25, align 4
  %76 = load i32, i32* %25, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* %25, align 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %19, align 8
  br label %165

81:                                               ; preds = %66
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %86 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* %24, align 8
  %89 = load i32, i32* %23, align 4
  %90 = call i64 @fuse_send_write(%struct.fuse_req* %85, %struct.fuse_io_priv* %86, i64 %87, i64 %88, i32 %89)
  store i64 %90, i64* %22, align 8
  br label %98

91:                                               ; preds = %81
  %92 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %93 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* %24, align 8
  %96 = load i32, i32* %23, align 4
  %97 = call i64 @fuse_send_read(%struct.fuse_req* %92, %struct.fuse_io_priv* %93, i64 %94, i64 %95, i32 %96)
  store i64 %97, i64* %22, align 8
  br label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %100 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %98
  %104 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @fuse_release_user_pages(%struct.fuse_req* %104, i32 %108)
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %112 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i64, i64* %19, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %122 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %19, align 8
  br label %126

126:                                              ; preds = %120, %117
  br label %165

127:                                              ; preds = %110
  %128 = load i64, i64* %22, align 8
  %129 = load i64, i64* %24, align 8
  %130 = icmp ugt i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i64, i64* @EIO, align 8
  %133 = sub i64 0, %132
  store i64 %133, i64* %19, align 8
  br label %165

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* %11, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %11, align 8
  %139 = load i64, i64* %22, align 8
  %140 = load i64, i64* %19, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %19, align 8
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* %18, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %18, align 8
  %145 = load i64, i64* %22, align 8
  %146 = load i64, i64* %24, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %165

149:                                              ; preds = %135
  %150 = load i64, i64* %11, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %154 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %155 = call i32 @fuse_put_request(%struct.fuse_conn* %153, %struct.fuse_req* %154)
  %156 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %157 = call i32 @fuse_iter_npages(%struct.iov_iter* %21)
  %158 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %156, i32 %157)
  store %struct.fuse_req* %158, %struct.fuse_req** %20, align 8
  %159 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %160 = call i64 @IS_ERR(%struct.fuse_req* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %165

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %149
  br label %63

165:                                              ; preds = %162, %148, %131, %126, %78, %63
  %166 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %167 = call i64 @IS_ERR(%struct.fuse_req* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %171 = load %struct.fuse_req*, %struct.fuse_req** %20, align 8
  %172 = call i32 @fuse_put_request(%struct.fuse_conn* %170, %struct.fuse_req* %171)
  br label %173

173:                                              ; preds = %169, %165
  %174 = load i64, i64* %19, align 8
  %175 = icmp ugt i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i64, i64* %18, align 8
  %178 = load i64*, i64** %12, align 8
  store i64 %177, i64* %178, align 8
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i64, i64* %19, align 8
  store i64 %180, i64* %7, align 8
  br label %181

181:                                              ; preds = %179, %59
  %182 = load i64, i64* %7, align 8
  ret i64 %182
}

declare dso_local i32 @iov_iter_init(%struct.iov_iter*, %struct.iovec*, i64, i64, i32) #1

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i32 @fuse_iter_npages(%struct.iov_iter*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i64 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @fuse_get_user_pages(%struct.fuse_req*, %struct.iov_iter*, i64*, i32) #1

declare dso_local i64 @fuse_send_write(%struct.fuse_req*, %struct.fuse_io_priv*, i64, i64, i32) #1

declare dso_local i64 @fuse_send_read(%struct.fuse_req*, %struct.fuse_io_priv*, i64, i64, i32) #1

declare dso_local i32 @fuse_release_user_pages(%struct.fuse_req*, i32) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
