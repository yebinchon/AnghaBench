; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_check_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_check_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ubifs_ch = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"bad magic %#08x, expected %#08x\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@UBIFS_NODE_TYPES_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"bad node type %d\00", align 1
@UBIFS_DATA_NODE = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"bad CRC: calculated %#08x, read %#08x\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad node length %d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_check_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ubifs_ch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %24, %struct.ubifs_ch** %20, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %6
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 0
  br label %36

36:                                               ; preds = %33, %27, %6
  %37 = phi i1 [ false, %27 ], [ false, %6 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ubifs_assert(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 7
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br label %49

49:                                               ; preds = %43, %36
  %50 = phi i1 [ false, %36 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ubifs_assert(i32 %51)
  %53 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %54 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = ptrtoint i8* %56 to i64
  store i64 %57, i64* %19, align 8
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* @UBIFS_NODE_MAGIC, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %49
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %19, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* @UBIFS_NODE_MAGIC, align 8
  %68 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* @EUCLEAN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %202

72:                                               ; preds = %49
  %73 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %74 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @UBIFS_NODE_TYPES_CNT, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78, %72
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %202

89:                                               ; preds = %78
  %90 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %91 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %195

103:                                              ; preds = %89
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %103
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %116 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %115, i32 0, i32 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %114, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %195

125:                                              ; preds = %113
  br label %150

126:                                              ; preds = %103
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %129 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %128, i32 0, i32 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %127, %135
  br i1 %136, label %148, label %137

137:                                              ; preds = %126
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %138, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %137, %126
  br label %195

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149, %125
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @UBIFS_DATA_NODE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %157
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %164 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 0, i32* %7, align 4
  br label %215

168:                                              ; preds = %162, %157, %153, %150
  %169 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr i8, i8* %170, i64 8
  %172 = load i32, i32* %16, align 4
  %173 = sub nsw i32 %172, 8
  %174 = call i64 @crc32(i32 %169, i8* %171, i32 %173)
  store i64 %174, i64* %17, align 8
  %175 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %176 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @le32_to_cpu(i32 %177)
  %179 = ptrtoint i8* %178 to i64
  store i64 %179, i64* %18, align 8
  %180 = load i64, i64* %17, align 8
  %181 = load i64, i64* %18, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %168
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = load i64, i64* %17, align 8
  %188 = trunc i64 %187 to i32
  %189 = load i64, i64* %18, align 8
  %190 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %188, i64 %189)
  br label %191

191:                                              ; preds = %186, %183
  %192 = load i32, i32* @EUCLEAN, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %14, align 4
  br label %202

194:                                              ; preds = %168
  store i32 0, i32* %7, align 4
  br label %215

195:                                              ; preds = %148, %124, %102
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %16, align 4
  %200 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %191, %88, %69
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %206, i32 %207)
  %209 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = call i32 @dbg_dump_node(%struct.ubifs_info* %209, i8* %210)
  %212 = call i32 (...) @dbg_dump_stack()
  br label %213

213:                                              ; preds = %205, %202
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %213, %194, %167
  %216 = load i32, i32* %7, align 4
  ret i32 %216
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, ...) #1

declare dso_local i64 @crc32(i32, i8*, i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dbg_dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
