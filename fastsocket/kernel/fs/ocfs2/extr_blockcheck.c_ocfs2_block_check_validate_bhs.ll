; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_validate_bhs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_validate_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.ocfs2_block_check = type { i32, i32 }
%struct.ocfs2_blockcheck_stats = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CRC32 failed: stored: %u, computed %u.  Applying ECC.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Fixed CRC32 failed: stored: %u, computed %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_block_check_validate_bhs(%struct.buffer_head** %0, i32 %1, %struct.ocfs2_block_check* %2, %struct.ocfs2_blockcheck_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_block_check*, align 8
  %9 = alloca %struct.ocfs2_blockcheck_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_block_check, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.buffer_head** %0, %struct.buffer_head*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ocfs2_block_check* %2, %struct.ocfs2_block_check** %8, align 8
  store %struct.ocfs2_blockcheck_stats* %3, %struct.ocfs2_blockcheck_stats** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %205

23:                                               ; preds = %4
  %24 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %9, align 8
  %25 = call i32 @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats* %24)
  %26 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %27 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %32 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %37 = call i32 @memset(%struct.ocfs2_block_check* %36, i32 0, i32 8)
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %13, align 4
  br label %38

38:                                               ; preds = %59, %23
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %44, i64 %46
  %48 = load %struct.buffer_head*, %struct.buffer_head** %47, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %51, i64 %53
  %55 = load %struct.buffer_head*, %struct.buffer_head** %54, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @crc32_le(i32 %43, i32 %50, i32 %57)
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load i32, i32* %13, align 4
  %64 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %193

68:                                               ; preds = %62
  %69 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %9, align 8
  %70 = call i32 @ocfs2_blockcheck_inc_failure(%struct.ocfs2_blockcheck_stats* %69)
  %71 = load i32, i32* @ML_ERROR, align 4
  %72 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @mlog(i32 %71, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %109, %68
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %82, i64 %84
  %86 = load %struct.buffer_head*, %struct.buffer_head** %85, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %89, i64 %91
  %93 = load %struct.buffer_head*, %struct.buffer_head** %92, align 8
  %94 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 8
  %97 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %97, i64 %99
  %101 = load %struct.buffer_head*, %struct.buffer_head** %100, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 8
  %105 = load i32, i32* %10, align 4
  %106 = mul nsw i32 %104, %105
  %107 = call i64 @ocfs2_hamming_encode(i32 %81, i32 %88, i32 %96, i32 %106)
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %80
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %76

112:                                              ; preds = %76
  %113 = load i32, i32* %14, align 4
  %114 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %113, %115
  store i32 %116, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %149, %112
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %117
  %122 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %122, i64 %124
  %126 = load %struct.buffer_head*, %struct.buffer_head** %125, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %129, i64 %131
  %133 = load %struct.buffer_head*, %struct.buffer_head** %132, align 8
  %134 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 8
  %137 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %137, i64 %139
  %141 = load %struct.buffer_head*, %struct.buffer_head** %140, align 8
  %142 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %143, 8
  %145 = load i32, i32* %10, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @ocfs2_hamming_fix(i32 %128, i32 %136, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %121
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %117

152:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %13, align 4
  br label %153

153:                                              ; preds = %174, %152
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %159, i64 %161
  %163 = load %struct.buffer_head*, %struct.buffer_head** %162, align 8
  %164 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %166, i64 %168
  %170 = load %struct.buffer_head*, %struct.buffer_head** %169, align 8
  %171 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @crc32_le(i32 %158, i32 %165, i32 %172)
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %157
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %153

177:                                              ; preds = %153
  %178 = load i32, i32* %13, align 4
  %179 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %9, align 8
  %184 = call i32 @ocfs2_blockcheck_inc_recover(%struct.ocfs2_blockcheck_stats* %183)
  br label %193

185:                                              ; preds = %177
  %186 = load i32, i32* @ML_ERROR, align 4
  %187 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @mlog(i32 %186, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %188, i32 %189)
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %185, %182, %67
  %194 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @cpu_to_le32(i32 %195)
  %197 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %198 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  %199 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %12, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @cpu_to_le16(i32 %200)
  %202 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %203 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %193, %22
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_block_check*, i32, i32) #1

declare dso_local i32 @crc32_le(i32, i32, i32) #1

declare dso_local i32 @ocfs2_blockcheck_inc_failure(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i64 @ocfs2_hamming_encode(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_hamming_fix(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_blockcheck_inc_recover(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
