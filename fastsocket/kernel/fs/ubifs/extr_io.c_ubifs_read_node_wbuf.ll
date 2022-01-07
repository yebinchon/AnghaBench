; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_read_node_wbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_read_node_wbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i32, i32, i32, i32, i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, i32, i32 }
%struct.ubifs_ch = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"LEB %d:%d, %s, length %d, jhead %s\00", align 1
@UBIFS_NODE_TYPES_CNT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to read node %d from LEB %d:%d, error %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad node type (%d but expected %d)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"expected node type %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"bad node length %d, expected %d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_node_wbuf(%struct.ubifs_wbuf* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_wbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_ch*, align 8
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %20 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %19, i32 0, i32 5
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %20, align 8
  store %struct.ubifs_info* %21, %struct.ubifs_info** %14, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %23, %struct.ubifs_ch** %18, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @dbg_ntype(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dbg_jhead(i32 %31)
  %33 = call i32 @dbg_io(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %27, i32 %28, i32 %32)
  %34 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %35 = icmp ne %struct.ubifs_wbuf* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %6
  %37 = load i32, i32* %12, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  %47 = icmp sge i32 %46, 0
  br label %48

48:                                               ; preds = %45, %39, %36, %6
  %49 = phi i1 [ false, %39 ], [ false, %36 ], [ false, %6 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @ubifs_assert(i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, 7
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br label %61

61:                                               ; preds = %55, %48
  %62 = phi i1 [ false, %48 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @ubifs_assert(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @UBIFS_NODE_TYPES_CNT, align 4
  %70 = icmp slt i32 %68, %69
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi i1 [ false, %61 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @ubifs_assert(i32 %73)
  %75 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %76 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %75, i32 0, i32 3
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %80 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %88 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br label %91

91:                                               ; preds = %83, %71
  %92 = phi i1 [ false, %71 ], [ %90, %83 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %98 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %97, i32 0, i32 3
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ubifs_read_node(%struct.ubifs_info* %100, i8* %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  br label %213

107:                                              ; preds = %91
  %108 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %109 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %115, %107
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr i8, i8* %117, i64 %119
  %121 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %122 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %129 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 %132, %133
  %135 = call i32 @memcpy(i8* %120, i32 %131, i32 %134)
  %136 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %8, align 8
  %137 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %136, i32 0, i32 3
  %138 = call i32 @spin_unlock(i32* %137)
  %139 = load i32, i32* %16, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %116
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %143 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @ubi_read(i32 %144, i32 %145, i8* %146, i32 %147, i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %141
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* @EBADMSG, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %15, align 4
  %162 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = call i32 (...) @dbg_dump_stack()
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %7, align 4
  br label %213

165:                                              ; preds = %152, %141
  br label %166

166:                                              ; preds = %165, %116
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.ubifs_ch*, %struct.ubifs_ch** %18, align 8
  %169 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %167, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load %struct.ubifs_ch*, %struct.ubifs_ch** %18, align 8
  %174 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %176)
  br label %203

178:                                              ; preds = %166
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @ubifs_check_node(%struct.ubifs_info* %179, i8* %180, i32 %181, i32 %182, i32 0, i32 0)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %15, align 4
  store i32 %189, i32* %7, align 4
  br label %213

190:                                              ; preds = %178
  %191 = load %struct.ubifs_ch*, %struct.ubifs_ch** %18, align 8
  %192 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @le32_to_cpu(i32 %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %199, i32 %200)
  br label %203

202:                                              ; preds = %190
  store i32 0, i32* %7, align 4
  br label %213

203:                                              ; preds = %198, %172
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %13, align 4
  %206 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %204, i32 %205)
  %207 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = call i32 @dbg_dump_node(%struct.ubifs_info* %207, i8* %208)
  %210 = call i32 (...) @dbg_dump_stack()
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %203, %202, %186, %157, %96
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubifs_read_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, ...) #1

declare dso_local i32 @dbg_dump_stack(...) #1

declare dso_local i32 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
