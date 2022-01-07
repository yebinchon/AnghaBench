; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_analyze_frame_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_analyze_frame_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_frame_cache = type { i32, i32, i64* }

@I386_EBP_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.i386_frame_cache*)* @i386_analyze_frame_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i386_analyze_frame_setup(i64 %0, i64 %1, %struct.i386_frame_cache* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i386_frame_cache*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.i386_frame_cache* %2, %struct.i386_frame_cache** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %4, align 8
  br label %192

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @read_memory_unsigned_integer(i64 %16, i32 1)
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %8, align 1
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 85
  br i1 %21, label %22, label %177

22:                                               ; preds = %15
  %23 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %24 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @I386_EBP_REGNUM, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 0, i64* %27, align 8
  %28 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %29 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 4
  store i32 %31, i32* %29, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, 1
  %35 = icmp sle i64 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %4, align 8
  br label %192

38:                                               ; preds = %22
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i32 @read_memory_unsigned_integer(i64 %40, i32 1)
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %8, align 1
  br label %43

43:                                               ; preds = %77, %38
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 41
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 43
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 49
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 51
  br label %59

59:                                               ; preds = %55, %51, %47, %43
  %60 = phi i1 [ true, %51 ], [ true, %47 ], [ true, %43 ], [ %58, %55 ]
  br i1 %60, label %61, label %85

61:                                               ; preds = %59
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = add nsw i64 %65, 2
  %67 = call i32 @read_memory_unsigned_integer(i64 %66, i32 1)
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %8, align 1
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  switch i32 %70, label %74 [
    i32 219, label %71
    i32 201, label %71
    i32 210, label %71
    i32 192, label %71
  ]

71:                                               ; preds = %61, %61, %61, %61
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %9, align 4
  br label %77

74:                                               ; preds = %61
  %75 = load i64, i64* %5, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %192

77:                                               ; preds = %71
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = add nsw i64 %81, 1
  %83 = call i32 @read_memory_unsigned_integer(i64 %82, i32 1)
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %8, align 1
  br label %43

85:                                               ; preds = %59
  %86 = load i8, i8* %8, align 1
  %87 = zext i8 %86 to i32
  switch i32 %87, label %112 [
    i32 139, label %88
    i32 137, label %100
  ]

88:                                               ; preds = %85
  %89 = load i64, i64* %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = add nsw i64 %92, 2
  %94 = call i32 @read_memory_unsigned_integer(i64 %93, i32 1)
  %95 = icmp ne i32 %94, 236
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i64, i64* %5, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %4, align 8
  br label %192

99:                                               ; preds = %88
  br label %115

100:                                              ; preds = %85
  %101 = load i64, i64* %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = add nsw i64 %104, 2
  %106 = call i32 @read_memory_unsigned_integer(i64 %105, i32 1)
  %107 = icmp ne i32 %106, 229
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i64, i64* %5, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %4, align 8
  br label %192

111:                                              ; preds = %100
  br label %115

112:                                              ; preds = %85
  %113 = load i64, i64* %5, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %4, align 8
  br label %192

115:                                              ; preds = %111, %99
  %116 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %117 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %5, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* %5, align 8
  %124 = add nsw i64 %123, 3
  %125 = icmp sle i64 %122, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load i64, i64* %6, align 8
  store i64 %127, i64* %4, align 8
  br label %192

128:                                              ; preds = %115
  %129 = load i64, i64* %5, align 8
  %130 = add nsw i64 %129, 3
  %131 = call i32 @read_memory_unsigned_integer(i64 %130, i32 1)
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %8, align 1
  %133 = load i8, i8* %8, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 131
  br i1 %135, label %136, label %153

136:                                              ; preds = %128
  %137 = load i64, i64* %5, align 8
  %138 = add nsw i64 %137, 4
  %139 = call i32 @read_memory_unsigned_integer(i64 %138, i32 1)
  %140 = icmp ne i32 %139, 236
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i64, i64* %5, align 8
  %143 = add nsw i64 %142, 3
  store i64 %143, i64* %4, align 8
  br label %192

144:                                              ; preds = %136
  %145 = load i64, i64* %5, align 8
  %146 = add nsw i64 %145, 5
  %147 = call i8* @read_memory_integer(i64 %146, i32 1)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %150 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i64, i64* %5, align 8
  %152 = add nsw i64 %151, 6
  store i64 %152, i64* %4, align 8
  br label %192

153:                                              ; preds = %128
  %154 = load i8, i8* %8, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 129
  br i1 %156, label %157, label %174

157:                                              ; preds = %153
  %158 = load i64, i64* %5, align 8
  %159 = add nsw i64 %158, 4
  %160 = call i32 @read_memory_unsigned_integer(i64 %159, i32 1)
  %161 = icmp ne i32 %160, 236
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i64, i64* %5, align 8
  %164 = add nsw i64 %163, 3
  store i64 %164, i64* %4, align 8
  br label %192

165:                                              ; preds = %157
  %166 = load i64, i64* %5, align 8
  %167 = add nsw i64 %166, 5
  %168 = call i8* @read_memory_integer(i64 %167, i32 4)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %171 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i64, i64* %5, align 8
  %173 = add nsw i64 %172, 9
  store i64 %173, i64* %4, align 8
  br label %192

174:                                              ; preds = %153
  %175 = load i64, i64* %5, align 8
  %176 = add nsw i64 %175, 3
  store i64 %176, i64* %4, align 8
  br label %192

177:                                              ; preds = %15
  %178 = load i8, i8* %8, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 200
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = load i64, i64* %5, align 8
  %183 = add nsw i64 %182, 1
  %184 = call i32 @read_memory_unsigned_integer(i64 %183, i32 2)
  %185 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %186 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %5, align 8
  %188 = add nsw i64 %187, 4
  store i64 %188, i64* %4, align 8
  br label %192

189:                                              ; preds = %177
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %5, align 8
  store i64 %191, i64* %4, align 8
  br label %192

192:                                              ; preds = %190, %181, %174, %165, %162, %144, %141, %126, %112, %108, %96, %74, %36, %13
  %193 = load i64, i64* %4, align 8
  ret i64 %193
}

declare dso_local i32 @read_memory_unsigned_integer(i64, i32) #1

declare dso_local i8* @read_memory_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
