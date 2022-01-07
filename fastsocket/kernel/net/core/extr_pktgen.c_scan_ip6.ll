; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_scan_ip6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_scan_ip6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @scan_ip6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_ip6(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %22, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %15, 16
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 0, i8* %21, align 1
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %14

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %108, %25
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 58
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %109

44:                                               ; preds = %31
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %44, %26
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @simple_strtoul(i8* %48, i8** %13, i32 16)
  store i64 %49, i64* %8, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %228

59:                                               ; preds = %47
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @in_aton(i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 12
  %75 = bitcast i8* %74 to %struct.in_addr*
  %76 = call i32 @memcpy(%struct.in_addr* %75, i32* %12, i32 4)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %77, %78
  store i32 %79, i32* %3, align 4
  br label %228

80:                                               ; preds = %62, %59
  %81 = load i64, i64* %8, align 8
  %82 = lshr i64 %81, 8
  %83 = trunc i64 %82 to i8
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 %83, i8* %88, align 1
  %89 = load i64, i64* %8, align 8
  %90 = and i64 %89, 255
  %91 = trunc i64 %90 to i8
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 %91, i8* %96, align 1
  %97 = load i32, i32* %6, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 16
  br i1 %105, label %106, label %108

106:                                              ; preds = %80
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %228

108:                                              ; preds = %80
  br label %26

109:                                              ; preds = %39
  br label %110

110:                                              ; preds = %205, %109
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 58
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %206

119:                                              ; preds = %115
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %129

124:                                              ; preds = %110
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %206

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %119
  %130 = load i8*, i8** %4, align 8
  %131 = call i64 @simple_strtol(i8* %130, i8** %13, i32 16)
  store i64 %131, i64* %8, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %129
  %141 = load i8*, i8** %4, align 8
  %142 = load i8, i8* %141, align 1
  %143 = icmp ne i8 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = add i32 %145, -1
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %144, %140
  br label %206

148:                                              ; preds = %129
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %10, align 4
  %151 = add i32 %149, %150
  %152 = icmp ule i32 %151, 12
  br i1 %152, label %153, label %178

153:                                              ; preds = %148
  %154 = load i8*, i8** %4, align 8
  %155 = load i32, i32* %6, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 46
  br i1 %160, label %161, label %178

161:                                              ; preds = %153
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 @in_aton(i8* %162)
  store i32 %163, i32* %12, align 4
  %164 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %165 = load i32, i32* %11, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = bitcast i8* %167 to %struct.in_addr*
  %169 = call i32 @memcpy(%struct.in_addr* %168, i32* %12, i32 4)
  %170 = load i32, i32* %11, align 4
  %171 = add i32 %170, 4
  store i32 %171, i32* %11, align 4
  %172 = load i8*, i8** %4, align 8
  %173 = call i64 @strlen(i8* %172)
  %174 = load i32, i32* %7, align 4
  %175 = zext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %7, align 4
  br label %206

178:                                              ; preds = %153, %148
  %179 = load i64, i64* %8, align 8
  %180 = lshr i64 %179, 8
  %181 = trunc i64 %180 to i8
  %182 = load i32, i32* %11, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %11, align 4
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %184
  store i8 %181, i8* %185, align 1
  %186 = load i64, i64* %8, align 8
  %187 = and i64 %186, 255
  %188 = trunc i64 %187 to i8
  %189 = load i32, i32* %11, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %11, align 4
  %191 = zext i32 %189 to i64
  %192 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %191
  store i8 %188, i8* %192, align 1
  %193 = load i32, i32* %6, align 4
  %194 = load i8*, i8** %4, align 8
  %195 = zext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %4, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %7, align 4
  %199 = add i32 %198, %197
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add i32 %200, %201
  %203 = icmp eq i32 %202, 16
  br i1 %203, label %204, label %205

204:                                              ; preds = %178
  br label %206

205:                                              ; preds = %178
  br label %110

206:                                              ; preds = %204, %161, %147, %127, %118
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %223, %206
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %207
  %212 = load i32, i32* %6, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = load i8*, i8** %5, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sub i32 16, %217
  %219 = load i32, i32* %6, align 4
  %220 = add i32 %218, %219
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %216, i64 %221
  store i8 %215, i8* %222, align 1
  br label %223

223:                                              ; preds = %211
  %224 = load i32, i32* %6, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %207

226:                                              ; preds = %207
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %226, %106, %70, %58
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @in_aton(i8*) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32*, i32) #1

declare dso_local i64 @simple_strtol(i8*, i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
