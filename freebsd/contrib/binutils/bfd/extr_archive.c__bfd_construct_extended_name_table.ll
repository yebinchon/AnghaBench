; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c__bfd_construct_extended_name_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c__bfd_construct_extended_name_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ar_hdr = type { i64* }

@FALSE = common dso_local global i64 0, align 8
@BFD_TRADITIONAL_FORMAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%-ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_construct_extended_name_table(%struct.TYPE_10__* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ar_hdr*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ar_hdr*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %12, align 8
  br label %29

29:                                               ; preds = %127, %4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %131

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @normalize(%struct.TYPE_10__* %33, i32 %36)
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %5, align 8
  br label %235

42:                                               ; preds = %32
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @strlen(i8* %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = call i32 @bfd_get_file_flags(%struct.TYPE_10__* %49)
  %51 = load i32, i32* @BFD_TRADITIONAL_FORMAT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %54, %48, %42
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i64, i64* %11, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %68, %60
  br label %126

72:                                               ; preds = %56
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = call %struct.ar_hdr* @arch_hdr(%struct.TYPE_10__* %73)
  store %struct.ar_hdr* %74, %struct.ar_hdr** %16, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load %struct.ar_hdr*, %struct.ar_hdr** %16, align 8
  %77 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i64 @strncmp(i8* %75, i64* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %15, align 4
  %84 = zext i32 %83 to i64
  %85 = icmp ult i64 %84, 8
  br i1 %85, label %86, label %125

86:                                               ; preds = %82
  %87 = load %struct.ar_hdr*, %struct.ar_hdr** %16, align 8
  %88 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %95 = call i64 @ar_padchar(%struct.TYPE_10__* %94)
  %96 = icmp ne i64 %93, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %86, %72
  %98 = load %struct.ar_hdr*, %struct.ar_hdr** %16, align 8
  %99 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @memcpy(i64* %100, i8* %101, i32 %102)
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load i32, i32* %15, align 4
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %113, 8
  br i1 %114, label %115, label %124

115:                                              ; preds = %111, %97
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %117 = call i64 @ar_padchar(%struct.TYPE_10__* %116)
  %118 = load %struct.ar_hdr*, %struct.ar_hdr** %16, align 8
  %119 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  br label %124

124:                                              ; preds = %115, %111, %107
  br label %125

125:                                              ; preds = %124, %86, %82
  br label %126

126:                                              ; preds = %125, %71
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  store %struct.TYPE_10__* %130, %struct.TYPE_10__** %12, align 8
  br label %29

131:                                              ; preds = %29
  %132 = load i64, i64* %11, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i64, i64* @TRUE, align 8
  store i64 %135, i64* %5, align 8
  br label %235

136:                                              ; preds = %131
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = load i64, i64* %11, align 8
  %139 = call i8* @bfd_zalloc(%struct.TYPE_10__* %137, i64 %138)
  %140 = load i8**, i8*** %8, align 8
  store i8* %139, i8** %140, align 8
  %141 = load i8**, i8*** %8, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i64, i64* @FALSE, align 8
  store i64 %145, i64* %5, align 8
  br label %235

146:                                              ; preds = %136
  %147 = load i64, i64* %11, align 8
  %148 = load i64*, i64** %9, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i8**, i8*** %8, align 8
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %13, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** %12, align 8
  br label %154

154:                                              ; preds = %229, %146
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %156 = icmp ne %struct.TYPE_10__* %155, null
  br i1 %156, label %157, label %233

157:                                              ; preds = %154
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @normalize(%struct.TYPE_10__* %158, i32 %161)
  store i8* %162, i8** %17, align 8
  %163 = load i8*, i8** %17, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i64, i64* @FALSE, align 8
  store i64 %166, i64* %5, align 8
  br label %235

167:                                              ; preds = %157
  %168 = load i8*, i8** %17, align 8
  %169 = call i32 @strlen(i8* %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ugt i32 %170, %171
  br i1 %172, label %173, label %228

173:                                              ; preds = %167
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %175 = call %struct.ar_hdr* @arch_hdr(%struct.TYPE_10__* %174)
  store %struct.ar_hdr* %175, %struct.ar_hdr** %19, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = call i32 @strcpy(i8* %176, i8* %177)
  %179 = load i64, i64* %7, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %173
  %182 = load i8*, i8** %13, align 8
  %183 = load i32, i32* %18, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  store i8 10, i8* %185, align 1
  br label %196

186:                                              ; preds = %173
  %187 = load i8*, i8** %13, align 8
  %188 = load i32, i32* %18, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 47, i8* %190, align 1
  %191 = load i8*, i8** %13, align 8
  %192 = load i32, i32* %18, align 4
  %193 = add i32 %192, 1
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 10, i8* %195, align 1
  br label %196

196:                                              ; preds = %186, %181
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %198 = call i64 @ar_padchar(%struct.TYPE_10__* %197)
  %199 = load %struct.ar_hdr*, %struct.ar_hdr** %19, align 8
  %200 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  store i64 %198, i64* %202, align 8
  %203 = load %struct.ar_hdr*, %struct.ar_hdr** %19, align 8
  %204 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  %207 = load i32, i32* %10, align 4
  %208 = sub i32 %207, 1
  %209 = load i8*, i8** %13, align 8
  %210 = load i8**, i8*** %8, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = ptrtoint i8* %209 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @_bfd_ar_spacepad(i64* %206, i32 %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %18, align 4
  %218 = add i32 %217, 1
  %219 = load i8*, i8** %13, align 8
  %220 = zext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8* %221, i8** %13, align 8
  %222 = load i64, i64* %7, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %196
  %225 = load i8*, i8** %13, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %13, align 8
  br label %227

227:                                              ; preds = %224, %196
  br label %228

228:                                              ; preds = %227, %167
  br label %229

229:                                              ; preds = %228
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  store %struct.TYPE_10__* %232, %struct.TYPE_10__** %12, align 8
  br label %154

233:                                              ; preds = %154
  %234 = load i64, i64* @TRUE, align 8
  store i64 %234, i64* %5, align 8
  br label %235

235:                                              ; preds = %233, %165, %144, %134, %40
  %236 = load i64, i64* %5, align 8
  ret i64 %236
}

declare dso_local i8* @normalize(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bfd_get_file_flags(%struct.TYPE_10__*) #1

declare dso_local %struct.ar_hdr* @arch_hdr(%struct.TYPE_10__*) #1

declare dso_local i64 @strncmp(i8*, i64*, i32) #1

declare dso_local i64 @ar_padchar(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i8* @bfd_zalloc(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @_bfd_ar_spacepad(i64*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
