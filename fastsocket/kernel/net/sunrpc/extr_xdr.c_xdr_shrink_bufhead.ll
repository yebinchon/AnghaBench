; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_shrink_bufhead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_shrink_bufhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i64, i64, i64, i32, %struct.kvec*, %struct.kvec* }
%struct.kvec = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_buf*, i64)* @xdr_shrink_bufhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_shrink_bufhead(%struct.xdr_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.xdr_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %11 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %14 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 6
  %15 = load %struct.kvec*, %struct.kvec** %14, align 8
  store %struct.kvec* %15, %struct.kvec** %6, align 8
  %16 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %17 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %16, i32 0, i32 5
  %18 = load %struct.kvec*, %struct.kvec** %17, align 8
  store %struct.kvec* %18, %struct.kvec** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.kvec*, %struct.kvec** %5, align 8
  %21 = getelementptr inbounds %struct.kvec, %struct.kvec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.kvec*, %struct.kvec** %6, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %149

30:                                               ; preds = %2
  %31 = load %struct.kvec*, %struct.kvec** %6, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.kvec*, %struct.kvec** %6, align 8
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %7, align 8
  %42 = load %struct.kvec*, %struct.kvec** %6, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load %struct.kvec*, %struct.kvec** %6, align 8
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @memmove(i8* %47, i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %36, %30
  %54 = load i64, i64* %4, align 8
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.kvec*, %struct.kvec** %6, align 8
  %68 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp uge i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i64 0, i64* %7, align 8
  br label %87

72:                                               ; preds = %62
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.kvec*, %struct.kvec** %6, align 8
  %75 = getelementptr inbounds %struct.kvec, %struct.kvec* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %76, %77
  %79 = icmp ugt i64 %73, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.kvec*, %struct.kvec** %6, align 8
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %83, %84
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %80, %72
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %87
  %91 = load %struct.kvec*, %struct.kvec** %6, align 8
  %92 = getelementptr inbounds %struct.kvec, %struct.kvec* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %98 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %101 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %105, %106
  %108 = load i64, i64* %4, align 8
  %109 = sub i64 %107, %108
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @_copy_from_pages(i8* %96, i32 %99, i64 %109, i64 %110)
  br label %112

112:                                              ; preds = %90, %87
  %113 = load i64, i64* %4, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ugt i64 %113, %115
  br i1 %116, label %117, label %148

117:                                              ; preds = %112
  %118 = load i64, i64* %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = sub i64 %118, %120
  store i64 %121, i64* %7, align 8
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.kvec*, %struct.kvec** %6, align 8
  %124 = getelementptr inbounds %struct.kvec, %struct.kvec* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ugt i64 %122, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load %struct.kvec*, %struct.kvec** %6, align 8
  %129 = getelementptr inbounds %struct.kvec, %struct.kvec* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %7, align 8
  br label %131

131:                                              ; preds = %127, %117
  %132 = load %struct.kvec*, %struct.kvec** %6, align 8
  %133 = getelementptr inbounds %struct.kvec, %struct.kvec* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.kvec*, %struct.kvec** %5, align 8
  %136 = getelementptr inbounds %struct.kvec, %struct.kvec* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.kvec*, %struct.kvec** %5, align 8
  %140 = getelementptr inbounds %struct.kvec, %struct.kvec* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i64, i64* %8, align 8
  %144 = sub i64 0, %143
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @memcpy(i64 %134, i8* %145, i64 %146)
  br label %148

148:                                              ; preds = %131, %112
  br label %149

149:                                              ; preds = %148, %2
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %204

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* %4, align 8
  %156 = icmp ugt i64 %154, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %152
  %158 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %159 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %162 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %4, align 8
  %165 = add i64 %163, %164
  %166 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %167 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* %4, align 8
  %172 = sub i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @_shift_data_right_pages(i32 %160, i64 %165, i64 %168, i32 %173)
  br label %175

175:                                              ; preds = %157, %152
  %176 = load i64, i64* %4, align 8
  store i64 %176, i64* %7, align 8
  %177 = load i64, i64* %4, align 8
  %178 = load i32, i32* %9, align 4
  %179 = zext i32 %178 to i64
  %180 = icmp ugt i64 %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %7, align 8
  br label %184

184:                                              ; preds = %181, %175
  %185 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %186 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %189 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.kvec*, %struct.kvec** %5, align 8
  %192 = getelementptr inbounds %struct.kvec, %struct.kvec* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = load %struct.kvec*, %struct.kvec** %5, align 8
  %196 = getelementptr inbounds %struct.kvec, %struct.kvec* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = load i64, i64* %4, align 8
  %200 = sub i64 0, %199
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i64, i64* %7, align 8
  %203 = call i32 @_copy_to_pages(i32 %187, i64 %190, i8* %201, i64 %202)
  br label %204

204:                                              ; preds = %184, %149
  %205 = load i64, i64* %4, align 8
  %206 = load %struct.kvec*, %struct.kvec** %5, align 8
  %207 = getelementptr inbounds %struct.kvec, %struct.kvec* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = sub i64 %208, %205
  store i64 %209, i64* %207, align 8
  %210 = load i64, i64* %4, align 8
  %211 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %212 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = sub i64 %213, %210
  store i64 %214, i64* %212, align 8
  %215 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %216 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %219 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %217, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %204
  %223 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %224 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %227 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %226, i32 0, i32 2
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %222, %204
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memmove(i8*, i64, i64) #1

declare dso_local i32 @_copy_from_pages(i8*, i32, i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @_shift_data_right_pages(i32, i64, i64, i32) #1

declare dso_local i32 @_copy_to_pages(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
