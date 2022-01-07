; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_indirect_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_indirect_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i32, i64, %struct.TYPE_11__*, i32* }
%struct.bfd_link_order = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32 (i32*, %struct.bfd_link_info*, i32*, %struct.TYPE_11__*, i8*, i8*)* }

@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_11__*, %struct.bfd_link_order*)* @ecoff_indirect_link_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecoff_indirect_link_order(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_11__* %2, %struct.bfd_link_order* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.bfd_link_order*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.bfd_link_order* %3, %struct.bfd_link_order** %9, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @BFD_ASSERT(i32 %23)
  %25 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %26 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %10, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %5, align 4
  br label %196

39:                                               ; preds = %4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = icmp eq %struct.TYPE_11__* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BFD_ASSERT(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %51 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BFD_ASSERT(i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %60 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @BFD_ASSERT(i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = call i32 @bfd_malloc_and_get_section(i32* %65, %struct.TYPE_11__* %66, i8** %12)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %39
  br label %182

70:                                               ; preds = %39
  %71 = load i32*, i32** %11, align 8
  %72 = call %struct.TYPE_12__* @ecoff_backend(i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %75, %78
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i8* @bfd_malloc(i32 %80)
  store i8* %81, i8** %15, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %182

88:                                               ; preds = %84, %70
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @SEEK_SET, align 4
  %94 = call i64 @bfd_seek(i32* %89, i64 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %88
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @bfd_bread(i8* %97, i32 %98, i32* %99)
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %88
  br label %182

104:                                              ; preds = %96
  %105 = load i32*, i32** %11, align 8
  %106 = call %struct.TYPE_12__* @ecoff_backend(i32* %105)
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32 (i32*, %struct.bfd_link_info*, i32*, %struct.TYPE_11__*, i8*, i8*)*, i32 (i32*, %struct.bfd_link_info*, i32*, %struct.TYPE_11__*, i8*, i8*)** %107, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = call i32 %108(i32* %109, %struct.bfd_link_info* %110, i32* %111, %struct.TYPE_11__* %112, i8* %113, i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %104
  br label %182

118:                                              ; preds = %104
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @bfd_set_section_contents(i32* %119, %struct.TYPE_11__* %120, i8* %121, i64 %124, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %118
  br label %182

131:                                              ; preds = %118
  %132 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %133 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %168

136:                                              ; preds = %131
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %139, %145
  store i64 %146, i64* %16, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i64, i64* %16, align 8
  %149 = load i32, i32* @SEEK_SET, align 4
  %150 = call i64 @bfd_seek(i32* %147, i64 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %136
  %153 = load i8*, i8** %15, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @bfd_bwrite(i8* %153, i32 %154, i32* %155)
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %152, %136
  br label %182

160:                                              ; preds = %152
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %160, %131
  %169 = load i8*, i8** %12, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i8*, i8** %12, align 8
  %173 = call i32 @free(i8* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i8*, i8** %15, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i8*, i8** %15, align 8
  %179 = call i32 @free(i8* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* @TRUE, align 4
  store i32 %181, i32* %5, align 4
  br label %196

182:                                              ; preds = %159, %130, %117, %103, %87, %69
  %183 = load i8*, i8** %12, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i8*, i8** %12, align 8
  %187 = call i32 @free(i8* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i8*, i8** %15, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i8*, i8** %15, align 8
  %193 = call i32 @free(i8* %192)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %194, %180, %37
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.TYPE_11__*, i8**) #1

declare dso_local %struct.TYPE_12__* @ecoff_backend(i32*) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i64 @bfd_seek(i32*, i64, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_11__*, i8*, i64, i64) #1

declare dso_local i32 @bfd_bwrite(i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
