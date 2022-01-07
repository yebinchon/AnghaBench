; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_write_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_write_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcache_block = type { i64, i8*, i64*, i64 }
%struct.mem_region = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@LINE_SIZE = common dso_local global i32 0, align 4
@MEM_RO = common dso_local global i64 0, align 8
@ENTRY_DIRTY = common dso_local global i64 0, align 8
@ENTRY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.dcache_block*)* @dcache_write_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcache_write_line(i32* %0, %struct.dcache_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dcache_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_region*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.dcache_block* %1, %struct.dcache_block** %5, align 8
  %15 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %16 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %176

20:                                               ; preds = %2
  %21 = load i32, i32* @LINE_SIZE, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %23 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %26 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %172, %64, %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %173

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.mem_region* @lookup_mem_region(i64 %32)
  store %struct.mem_region* %33, %struct.mem_region** %11, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %39 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %10, align 4
  br label %51

44:                                               ; preds = %31
  %45 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %46 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub nsw i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %44, %42
  %52 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %53 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %59 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MEM_RO, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %57, %51
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %28

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %171, %76
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %172

80:                                               ; preds = %77
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @XFORM(i64 %81)
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %98, %80
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %89 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ENTRY_DIRTY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %109

98:                                               ; preds = %87
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %10, align 4
  %103 = load i64, i64* %6, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %6, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %8, align 4
  br label %84

109:                                              ; preds = %97, %84
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %125, %109
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %116 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ENTRY_DIRTY, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %130

125:                                              ; preds = %114
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %10, align 4
  br label %111

130:                                              ; preds = %124, %111
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %147, %130
  %135 = load i32, i32* %14, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %134
  %138 = load i64, i64* %6, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.mem_region*, %struct.mem_region** %11, align 8
  %142 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %141, i32 0, i32 1
  %143 = call i32 @do_xfer_memory(i64 %138, i8* %139, i32 %140, i32 1, %struct.TYPE_2__* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %176

147:                                              ; preds = %137
  %148 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %149 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %148, i32 0, i32 2
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* %6, align 8
  %152 = call i64 @XFORM(i64 %151)
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i32, i32* @ENTRY_OK, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @memset(i64* %153, i32 %154, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %6, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %6, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %7, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %8, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %14, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %14, align 4
  br label %134

171:                                              ; preds = %134
  br label %77

172:                                              ; preds = %77
  br label %28

173:                                              ; preds = %28
  %174 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %175 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %174, i32 0, i32 3
  store i64 0, i64* %175, align 8
  store i32 1, i32* %3, align 4
  br label %176

176:                                              ; preds = %173, %146, %19
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.mem_region* @lookup_mem_region(i64) #1

declare dso_local i64 @XFORM(i64) #1

declare dso_local i32 @do_xfer_memory(i64, i8*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
