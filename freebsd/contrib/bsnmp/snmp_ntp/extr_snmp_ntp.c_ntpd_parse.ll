; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_ntp/extr_snmp_ntp.c_ntpd_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_ntp/extr_snmp_ntp.c_ntpd_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8**, i8**)* @ntpd_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntpd_parse(i8** %0, i64* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %32, %4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = call i64 @isspace(i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i1 [ false, %20 ], [ %29, %24 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  br label %20

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %219

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = load i8**, i8*** %8, align 8
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %65, %40
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i64 @isspace(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 61
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 44
  br label %63

63:                                               ; preds = %58, %53, %47, %43
  %64 = phi i1 [ false, %53 ], [ false, %47 ], [ false, %43 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  br label %43

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %13, align 1
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  store i8 0, i8* %71, align 1
  br label %73

73:                                               ; preds = %85, %68
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = call i64 @isspace(i32 %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i1 [ false, %73 ], [ %82, %77 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  br label %73

88:                                               ; preds = %83
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i8, i8* %13, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 44
  br i1 %95, label %96, label %109

96:                                               ; preds = %92, %88
  %97 = load i8**, i8*** %9, align 8
  store i8* null, i8** %97, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i8**, i8*** %6, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %98 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = load i64*, i64** %7, align 8
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, %103
  store i64 %106, i64* %104, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i8**, i8*** %6, align 8
  store i8* %107, i8** %108, align 8
  store i32 1, i32* %5, align 4
  br label %219

109:                                              ; preds = %92
  %110 = load i8*, i8** %10, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 34
  br i1 %113, label %114, label %162

114:                                              ; preds = %109
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i8**, i8*** %9, align 8
  store i8* %117, i8** %118, align 8
  br label %119

119:                                              ; preds = %130, %114
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ult i8* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 34
  br label %128

128:                                              ; preds = %123, %119
  %129 = phi i1 [ false, %119 ], [ %127, %123 ]
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %10, align 8
  br label %119

133:                                              ; preds = %128
  %134 = load i8*, i8** %10, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = icmp eq i8* %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %219

138:                                              ; preds = %133
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %10, align 8
  store i8 0, i8* %139, align 1
  br label %141

141:                                              ; preds = %158, %138
  %142 = load i8*, i8** %10, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = icmp ult i8* %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load i8*, i8** %10, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = call i64 @isspace(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i8*, i8** %10, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 44
  br label %156

156:                                              ; preds = %151, %145, %141
  %157 = phi i1 [ false, %145 ], [ false, %141 ], [ %155, %151 ]
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %10, align 8
  br label %141

161:                                              ; preds = %156
  br label %207

162:                                              ; preds = %109
  %163 = load i8*, i8** %10, align 8
  %164 = load i8**, i8*** %9, align 8
  store i8* %163, i8** %164, align 8
  br label %165

165:                                              ; preds = %176, %162
  %166 = load i8*, i8** %10, align 8
  %167 = load i8*, i8** %11, align 8
  %168 = icmp ult i8* %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i8*, i8** %10, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 44
  br label %174

174:                                              ; preds = %169, %165
  %175 = phi i1 [ false, %165 ], [ %173, %169 ]
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %10, align 8
  br label %165

179:                                              ; preds = %174
  %180 = load i8*, i8** %10, align 8
  store i8* %180, i8** %12, align 8
  br label %181

181:                                              ; preds = %195, %179
  %182 = load i8*, i8** %12, align 8
  %183 = load i8**, i8*** %9, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ugt i8* %182, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %181
  %187 = load i8*, i8** %12, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 -1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = call i64 @isspace(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %186
  br label %198

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194
  %196 = load i8*, i8** %12, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 -1
  store i8* %197, i8** %12, align 8
  br label %181

198:                                              ; preds = %193, %181
  %199 = load i8*, i8** %12, align 8
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %10, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = icmp ult i8* %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i8*, i8** %10, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %10, align 8
  br label %206

206:                                              ; preds = %203, %198
  br label %207

207:                                              ; preds = %206, %161
  %208 = load i8*, i8** %10, align 8
  %209 = load i8**, i8*** %6, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %208 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = load i64*, i64** %7, align 8
  %215 = load i64, i64* %214, align 8
  %216 = sub i64 %215, %213
  store i64 %216, i64* %214, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = load i8**, i8*** %6, align 8
  store i8* %217, i8** %218, align 8
  store i32 1, i32* %5, align 4
  br label %219

219:                                              ; preds = %207, %137, %96, %39
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i64 @isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
