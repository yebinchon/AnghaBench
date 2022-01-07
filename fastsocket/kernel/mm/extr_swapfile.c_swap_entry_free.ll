; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_swap_entry_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_swap_entry_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.swap_info_struct = type { i8*, i64, i64, i64, i64, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.gendisk* }
%struct.gendisk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i64)* }

@SWAP_HAS_CACHE = common dso_local global i8 0, align 1
@SWAP_MAP_SHMEM = common dso_local global i8 0, align 1
@COUNT_CONTINUED = common dso_local global i8 0, align 1
@SWAP_MAP_MAX = common dso_local global i8 0, align 1
@swap_list = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@swap_info = common dso_local global %struct.TYPE_7__** null, align 8
@nr_swap_pages = common dso_local global i32 0, align 4
@SWP_BLKDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.swap_info_struct*, i32, i8)* @swap_entry_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @swap_entry_free(%struct.swap_info_struct* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.gendisk*, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @swp_offset(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %14 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %8, align 1
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %9, align 1
  %25 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, -1
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %8, align 1
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load i8, i8* %9, align 1
  %39 = icmp ne i8 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @VM_BUG_ON(i32 %41)
  store i8 0, i8* %9, align 1
  br label %88

43:                                               ; preds = %3
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @SWAP_MAP_SHMEM, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i8 0, i8* %8, align 1
  br label %87

50:                                               ; preds = %43
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @COUNT_CONTINUED, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = load i8, i8* @SWAP_MAP_MAX, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %50
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @COUNT_CONTINUED, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i8, i8* %8, align 1
  %70 = call i64 @swap_count_continued(%struct.swap_info_struct* %67, i64 %68, i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i8, i8* @SWAP_MAP_MAX, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @COUNT_CONTINUED, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %74, %76
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %8, align 1
  br label %81

79:                                               ; preds = %66
  %80 = load i8, i8* @SWAP_MAP_MAX, align 1
  store i8 %80, i8* %8, align 1
  br label %81

81:                                               ; preds = %79, %72
  br label %85

82:                                               ; preds = %60
  %83 = load i8, i8* %8, align 1
  %84 = add i8 %83, -1
  store i8 %84, i8* %8, align 1
  br label %85

85:                                               ; preds = %82, %81
  br label %86

86:                                               ; preds = %85, %50
  br label %87

87:                                               ; preds = %86, %49
  br label %88

88:                                               ; preds = %87, %37
  %89 = load i8, i8* %8, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @mem_cgroup_uncharge_swap(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* %9, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %6, align 1
  %101 = load i8, i8* %6, align 1
  %102 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %103 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %101, i8* %106, align 1
  %107 = load i8, i8* %6, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %184, label %109

109:                                              ; preds = %94
  %110 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %111 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %110, i32 0, i32 6
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.gendisk*, %struct.gendisk** %113, align 8
  store %struct.gendisk* %114, %struct.gendisk** %10, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %117 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %123 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %120, %109
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %127 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ugt i64 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %133 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %124
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @swap_list, i32 0, i32 0), align 8
  %136 = icmp uge i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %139 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @swap_info, align 8
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @swap_list, i32 0, i32 0), align 8
  %143 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %141, i64 %142
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %140, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %150 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @swap_list, i32 0, i32 0), align 8
  br label %152

152:                                              ; preds = %148, %137, %134
  %153 = load i32, i32* @nr_swap_pages, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @nr_swap_pages, align 4
  %155 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %156 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %160 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SWP_BLKDEV, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %152
  %166 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %167 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32 (%struct.TYPE_8__*, i64)*, i32 (%struct.TYPE_8__*, i64)** %169, align 8
  %171 = icmp ne i32 (%struct.TYPE_8__*, i64)* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %165
  %173 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %174 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32 (%struct.TYPE_8__*, i64)*, i32 (%struct.TYPE_8__*, i64)** %176, align 8
  %178 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %179 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %178, i32 0, i32 6
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i32 %177(%struct.TYPE_8__* %180, i64 %181)
  br label %183

183:                                              ; preds = %172, %165, %152
  br label %184

184:                                              ; preds = %183, %94
  %185 = load i8, i8* %6, align 1
  ret i8 %185
}

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @swap_count_continued(%struct.swap_info_struct*, i64, i8 zeroext) #1

declare dso_local i32 @mem_cgroup_uncharge_swap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
