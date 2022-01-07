; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_one_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_one_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i64 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i8*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_13__* }

@bfd_link_hash_common = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@opb_shift = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_IS_COMMON = common dso_local global i32 0, align 4
@lang_one_common.header_printed = internal global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"\0AAllocating common symbols\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Common symbol       size              file\0A\0A\00", align 1
@output_bfd = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%B\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd_link_hash_entry*, i8*)* @lang_one_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lang_one_common(%struct.bfd_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bfd_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [50 x i8], align 16
  store %struct.bfd_link_hash_entry* %0, %struct.bfd_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %13 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @bfd_link_hash_common, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %3, align 8
  br label %198

19:                                               ; preds = %2
  %20 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %26 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 1), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %19
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %3, align 8
  br label %198

42:                                               ; preds = %34, %19
  %43 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %44 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @opb_shift, align 4
  %52 = add i32 %50, %51
  %53 = shl i32 1, %52
  %54 = sub i32 %53, 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @opb_shift, align 4
  %61 = add i32 %59, %60
  %62 = shl i32 -1, %61
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ugt i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %42
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %42
  %77 = load i64, i64* @bfd_link_hash_defined, align 8
  %78 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %79 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %82 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %89 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* @SEC_ALLOC, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @SEC_IS_COMMON, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0), align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %196

110:                                              ; preds = %76
  %111 = load i64, i64* @lang_one_common.header_printed, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 (i8*, ...) @minfo(i8* %116)
  %118 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 (i8*, ...) @minfo(i8* %120)
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* @lang_one_common.header_printed, align 8
  br label %123

123:                                              ; preds = %113, %110
  %124 = load i32, i32* @output_bfd, align 4
  %125 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %126 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @DMGL_ANSI, align 4
  %130 = load i32, i32* @DMGL_PARAMS, align 4
  %131 = or i32 %129, %130
  %132 = call i8* @bfd_demangle(i32 %124, i8* %128, i32 %131)
  store i8* %132, i8** %10, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %123
  %136 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %137 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %139)
  %141 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %142 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strlen(i8* %144)
  store i32 %145, i32* %9, align 4
  br label %153

146:                                              ; preds = %123
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %147)
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 @strlen(i8* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i8*, i8** %10, align 8
  %152 = call i32 @free(i8* %151)
  br label %153

153:                                              ; preds = %146, %135
  %154 = load i32, i32* %9, align 4
  %155 = icmp sge i32 %154, 19
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = call i32 (...) @print_nl()
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %156, %153
  br label %159

159:                                              ; preds = %162, %158
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 20
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = call i32 (...) @print_space()
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %159

166:                                              ; preds = %159
  %167 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %168 = load i32, i32* %7, align 4
  %169 = icmp ule i32 %168, -1
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %172 = load i32, i32* %7, align 4
  %173 = zext i32 %172 to i64
  %174 = call i32 @sprintf(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %173)
  br label %179

175:                                              ; preds = %166
  %176 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @sprintf_vma(i8* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %170
  %180 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %181 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %180)
  %182 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %183 = call i32 @strlen(i8* %182)
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %187, %179
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %185, 16
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = call i32 (...) @print_space()
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %184

191:                                              ; preds = %184
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %191, %76
  %197 = load i64, i64* @TRUE, align 8
  store i64 %197, i64* %3, align 8
  br label %198

198:                                              ; preds = %196, %40, %17
  %199 = load i64, i64* %3, align 8
  ret i64 %199
}

declare dso_local i32 @minfo(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @bfd_demangle(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @print_nl(...) #1

declare dso_local i32 @print_space(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @sprintf_vma(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
