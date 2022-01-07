; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_mpeg1_sequence_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_mpeg1_sequence_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i64, i32, i64, i32, i32, i32, i64 }

@c = common dso_local global i32 0, align 4
@GO7007_FORMAT_MPEG1 = common dso_local global i64 0, align 8
@GO7007_STD_NTSC = common dso_local global i64 0, align 8
@GO7007_FORMAT_MPEG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i8*, i32)* @mpeg1_sequence_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg1_sequence_header(%struct.go7007* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @c, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 6
  %13 = call i32 @CODE_GEN(i32 %10, i8* %12)
  %14 = load %struct.go7007*, %struct.go7007** %4, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GO7007_FORMAT_MPEG1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load %struct.go7007*, %struct.go7007** %4, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %39 [
    i32 128, label %23
    i32 129, label %31
  ]

23:                                               ; preds = %19
  %24 = load %struct.go7007*, %struct.go7007** %4, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GO7007_STD_NTSC, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 3, i32 2
  store i32 %30, i32* %8, align 4
  br label %40

31:                                               ; preds = %19
  %32 = load %struct.go7007*, %struct.go7007** %4, align 8
  %33 = getelementptr inbounds %struct.go7007, %struct.go7007* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GO7007_STD_NTSC, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 5, i32 4
  store i32 %38, i32* %8, align 4
  br label %40

39:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %31, %23
  br label %49

41:                                               ; preds = %3
  %42 = load %struct.go7007*, %struct.go7007** %4, align 8
  %43 = getelementptr inbounds %struct.go7007, %struct.go7007* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %47 [
    i32 128, label %45
    i32 129, label %46
  ]

45:                                               ; preds = %41
  store i32 2, i32* %8, align 4
  br label %48

46:                                               ; preds = %41
  store i32 3, i32* %8, align 4
  br label %48

47:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %46, %45
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.go7007*, %struct.go7007** %4, align 8
  %51 = getelementptr inbounds %struct.go7007, %struct.go7007* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %76 [
    i32 24000, label %53
    i32 24024, label %54
    i32 25025, label %55
    i32 30000, label %62
    i32 30030, label %69
  ]

53:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %77

54:                                               ; preds = %49
  store i32 2, i32* %9, align 4
  br label %77

55:                                               ; preds = %49
  %56 = load %struct.go7007*, %struct.go7007** %4, align 8
  %57 = getelementptr inbounds %struct.go7007, %struct.go7007* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 6, i32 3
  store i32 %61, i32* %9, align 4
  br label %77

62:                                               ; preds = %49
  %63 = load %struct.go7007*, %struct.go7007** %4, align 8
  %64 = getelementptr inbounds %struct.go7007, %struct.go7007* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 7, i32 4
  store i32 %68, i32* %9, align 4
  br label %77

69:                                               ; preds = %49
  %70 = load %struct.go7007*, %struct.go7007** %4, align 8
  %71 = getelementptr inbounds %struct.go7007, %struct.go7007* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 8, i32 5
  store i32 %75, i32* %9, align 4
  br label %77

76:                                               ; preds = %49
  store i32 5, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %69, %62, %55, %54, %53
  %78 = load i32, i32* @c, align 4
  %79 = load %struct.go7007*, %struct.go7007** %4, align 8
  %80 = getelementptr inbounds %struct.go7007, %struct.go7007* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CODE_ADD(i32 %78, i32 %81, i32 12)
  %83 = load i32, i32* @c, align 4
  %84 = load %struct.go7007*, %struct.go7007** %4, align 8
  %85 = getelementptr inbounds %struct.go7007, %struct.go7007* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @CODE_ADD(i32 %83, i32 %86, i32 12)
  %88 = load i32, i32* @c, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @CODE_ADD(i32 %88, i32 %89, i32 4)
  %91 = load i32, i32* @c, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @CODE_ADD(i32 %91, i32 %92, i32 4)
  %94 = load i32, i32* @c, align 4
  %95 = load %struct.go7007*, %struct.go7007** %4, align 8
  %96 = getelementptr inbounds %struct.go7007, %struct.go7007* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GO7007_FORMAT_MPEG2, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 20000, i32 262143
  %102 = call i32 @CODE_ADD(i32 %94, i32 %101, i32 18)
  %103 = load i32, i32* @c, align 4
  %104 = call i32 @CODE_ADD(i32 %103, i32 1, i32 1)
  %105 = load i32, i32* @c, align 4
  %106 = load %struct.go7007*, %struct.go7007** %4, align 8
  %107 = getelementptr inbounds %struct.go7007, %struct.go7007* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @GO7007_FORMAT_MPEG2, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 112, i32 20
  %113 = call i32 @CODE_ADD(i32 %105, i32 %112, i32 10)
  %114 = load i32, i32* @c, align 4
  %115 = call i32 @CODE_ADD(i32 %114, i32 0, i32 3)
  %116 = load i32, i32* @c, align 4
  %117 = call i32 @CODE_LENGTH(i32 %116)
  %118 = srem i32 %117, 8
  %119 = sub nsw i32 8, %118
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 8
  br i1 %121, label %122, label %126

122:                                              ; preds = %77
  %123 = load i32, i32* @c, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @CODE_ADD(i32 %123, i32 0, i32 %124)
  br label %126

126:                                              ; preds = %122, %77
  %127 = load %struct.go7007*, %struct.go7007** %4, align 8
  %128 = getelementptr inbounds %struct.go7007, %struct.go7007* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @GO7007_FORMAT_MPEG2, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %207

132:                                              ; preds = %126
  %133 = load i32, i32* @c, align 4
  %134 = call i32 @CODE_ADD(i32 %133, i32 1, i32 24)
  %135 = load i32, i32* @c, align 4
  %136 = call i32 @CODE_ADD(i32 %135, i32 181, i32 8)
  %137 = load i32, i32* @c, align 4
  %138 = call i32 @CODE_ADD(i32 %137, i32 328, i32 12)
  %139 = load %struct.go7007*, %struct.go7007** %4, align 8
  %140 = getelementptr inbounds %struct.go7007, %struct.go7007* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load i32, i32* @c, align 4
  %145 = call i32 @CODE_ADD(i32 %144, i32 131073, i32 20)
  br label %149

146:                                              ; preds = %132
  %147 = load i32, i32* @c, align 4
  %148 = call i32 @CODE_ADD(i32 %147, i32 655361, i32 20)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* @c, align 4
  %151 = call i32 @CODE_ADD(i32 %150, i32 0, i32 16)
  %152 = load i32, i32* @c, align 4
  %153 = call i32 @CODE_LENGTH(i32 %152)
  %154 = srem i32 %153, 8
  %155 = sub nsw i32 8, %154
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 8
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i32, i32* @c, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @CODE_ADD(i32 %159, i32 0, i32 %160)
  br label %162

162:                                              ; preds = %158, %149
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %206

165:                                              ; preds = %162
  %166 = load i32, i32* @c, align 4
  %167 = call i32 @CODE_ADD(i32 %166, i32 1, i32 24)
  %168 = load i32, i32* @c, align 4
  %169 = call i32 @CODE_ADD(i32 %168, i32 2898, i32 12)
  %170 = load i32, i32* @c, align 4
  %171 = load %struct.go7007*, %struct.go7007** %4, align 8
  %172 = getelementptr inbounds %struct.go7007, %struct.go7007* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @GO7007_STD_NTSC, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 2, i32 1
  %178 = call i32 @CODE_ADD(i32 %170, i32 %177, i32 3)
  %179 = load i32, i32* @c, align 4
  %180 = call i32 @CODE_ADD(i32 %179, i32 261, i32 9)
  %181 = load i32, i32* @c, align 4
  %182 = call i32 @CODE_ADD(i32 %181, i32 1285, i32 16)
  %183 = load i32, i32* @c, align 4
  %184 = load %struct.go7007*, %struct.go7007** %4, align 8
  %185 = getelementptr inbounds %struct.go7007, %struct.go7007* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @CODE_ADD(i32 %183, i32 %186, i32 14)
  %188 = load i32, i32* @c, align 4
  %189 = call i32 @CODE_ADD(i32 %188, i32 1, i32 1)
  %190 = load i32, i32* @c, align 4
  %191 = load %struct.go7007*, %struct.go7007** %4, align 8
  %192 = getelementptr inbounds %struct.go7007, %struct.go7007* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @CODE_ADD(i32 %190, i32 %193, i32 14)
  %195 = load i32, i32* @c, align 4
  %196 = call i32 @CODE_LENGTH(i32 %195)
  %197 = srem i32 %196, 8
  %198 = sub nsw i32 8, %197
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 8
  br i1 %200, label %201, label %205

201:                                              ; preds = %165
  %202 = load i32, i32* @c, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @CODE_ADD(i32 %202, i32 0, i32 %203)
  br label %205

205:                                              ; preds = %201, %165
  br label %206

206:                                              ; preds = %205, %162
  br label %207

207:                                              ; preds = %206, %126
  %208 = load i32, i32* @c, align 4
  %209 = call i32 @CODE_LENGTH(i32 %208)
  %210 = add nsw i32 %209, 32
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = and i32 %211, 255
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  store i8 %213, i8* %215, align 1
  %216 = load i32, i32* %7, align 4
  %217 = ashr i32 %216, 8
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  store i8 %218, i8* %220, align 1
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 2
  store i8 0, i8* %222, align 1
  %223 = load i8*, i8** %5, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 3
  store i8 0, i8* %224, align 1
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 4
  store i8 1, i8* %226, align 1
  %227 = load i8*, i8** %5, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 5
  store i8 -77, i8* %228, align 1
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local i32 @CODE_GEN(i32, i8*) #1

declare dso_local i32 @CODE_ADD(i32, i32, i32) #1

declare dso_local i32 @CODE_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
