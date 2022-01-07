; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }
%struct.regcache = type { i32 }

@amd64_return_value.integer_regnum = internal global [2 x i32] [i32 135, i32 134], align 4
@amd64_return_value.sse_regnum = internal global [2 x i32] [i32 129, i32 128], align 4
@AMD64_MEMORY = common dso_local global i32 0, align 4
@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i32 0, align 4
@AMD64_ST0_REGNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unexpected register class.\00", align 1
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*, i8*)* @amd64_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_return_value(%struct.gdbarch* %0, %struct.type* %1, %struct.regcache* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.regcache*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %7, align 8
  store %struct.type* %1, %struct.type** %8, align 8
  store %struct.regcache* %2, %struct.regcache** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.type*, %struct.type** %8, align 8
  %20 = call i32 @TYPE_LENGTH(%struct.type* %19)
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br label %26

26:                                               ; preds = %23, %5
  %27 = phi i1 [ false, %5 ], [ %25, %23 ]
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @gdb_assert(i32 %29)
  %31 = load %struct.type*, %struct.type** %8, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %33 = call i32 @amd64_classify(%struct.type* %31, i32* %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AMD64_MEMORY, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %39, i32* %6, align 4
  br label %147

40:                                               ; preds = %26
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AMD64_MEMORY, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @gdb_assert(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp sle i32 %47, 16
  %49 = zext i1 %48 to i32
  %50 = call i32 @gdb_assert(i32 %49)
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %140, %40
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %145

54:                                               ; preds = %51
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %103 [
    i32 137, label %59
    i32 133, label %65
    i32 132, label %71
    i32 131, label %81
    i32 130, label %90
    i32 136, label %102
  ]

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* @amd64_return_value.integer_regnum, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %17, align 4
  br label %105

65:                                               ; preds = %54
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* @amd64_return_value.sse_regnum, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %17, align 4
  br label %105

71:                                               ; preds = %54
  %72 = load i32, i32* %15, align 4
  %73 = icmp sgt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @gdb_assert(i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* @amd64_return_value.sse_regnum, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %105

81:                                               ; preds = %54
  %82 = load i32, i32* @AMD64_ST0_REGNUM, align 4
  store i32 %82, i32* %17, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %87 = load %struct.regcache*, %struct.regcache** %9, align 8
  %88 = call i32 @i387_return_value(%struct.gdbarch* %86, %struct.regcache* %87)
  br label %89

89:                                               ; preds = %85, %81
  br label %105

90:                                               ; preds = %54
  %91 = load i32, i32* %16, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 131
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi i1 [ false, %90 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @gdb_assert(i32 %99)
  %101 = load i32, i32* @AMD64_ST0_REGNUM, align 4
  store i32 %101, i32* %17, align 4
  store i32 8, i32* %18, align 4
  store i32 2, i32* %13, align 4
  br label %105

102:                                              ; preds = %54
  br label %140

103:                                              ; preds = %54
  %104 = call i32 @gdb_assert(i32 0)
  br label %105

105:                                              ; preds = %103, %97, %89, %71, %65, %59
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, -1
  %108 = zext i1 %107 to i32
  %109 = call i32 @gdb_assert(i32 %108)
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.regcache*, %struct.regcache** %9, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @min(i32 %116, i32 8)
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %16, align 4
  %120 = mul nsw i32 %119, 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = call i32 @regcache_raw_read_part(%struct.regcache* %113, i32 %114, i32 %115, i32 %117, i8* %122)
  br label %124

124:                                              ; preds = %112, %105
  %125 = load i8*, i8** %11, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.regcache*, %struct.regcache** %9, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @min(i32 %131, i32 8)
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %16, align 4
  %135 = mul nsw i32 %134, 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = call i32 @regcache_raw_write_part(%struct.regcache* %128, i32 %129, i32 %130, i32 %132, i8* %137)
  br label %139

139:                                              ; preds = %127, %124
  br label %140

140:                                              ; preds = %139, %102
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 8
  store i32 %144, i32* %13, align 4
  br label %51

145:                                              ; preds = %51
  %146 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %38
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @amd64_classify(%struct.type*, i32*) #1

declare dso_local i32 @i387_return_value(%struct.gdbarch*, %struct.regcache*) #1

declare dso_local i32 @regcache_raw_read_part(%struct.regcache*, i32, i32, i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @regcache_raw_write_part(%struct.regcache*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
