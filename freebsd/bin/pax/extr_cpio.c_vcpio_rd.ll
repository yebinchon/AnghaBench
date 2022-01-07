; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_cpio.c_vcpio_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_cpio.c_vcpio_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i8*, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i64, i8*, i8*, i8*, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@docrc = common dso_local global i64 0, align 8
@HEX = common dso_local global i32 0, align 4
@C_IFMT = common dso_local global i32 0, align 4
@C_ISLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpio_rd(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i64, i64* @docrc, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @crc_id(i8* %13, i32 52)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %214

17:                                               ; preds = %12
  br label %24

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @vcpio_id(i8* %19, i32 52)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %214

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HEX, align 4
  %33 = call i64 @asc_ul(i32 %31, i32 4, i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 10
  store i64 %33, i64* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HEX, align 4
  %41 = call i64 @asc_ul(i32 %39, i32 4, i32 %40)
  %42 = trunc i64 %41 to i32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HEX, align 4
  %50 = call i64 @asc_ul(i32 %48, i32 4, i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 9
  store i64 %50, i64* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HEX, align 4
  %58 = call i64 @asc_ul(i32 %56, i32 4, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 8
  store i64 %58, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HEX, align 4
  %66 = call i64 @asc_uqd(i32 %64, i32 4, i32 %65)
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  store i8* %67, i8** %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 6
  store i8* %74, i8** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 7
  store i8* %74, i8** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @HEX, align 4
  %85 = call i64 @asc_uqd(i32 %83, i32 4, i32 %84)
  %86 = inttoptr i64 %85 to i8*
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HEX, align 4
  %95 = call i64 @asc_ul(i32 %93, i32 4, i32 %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  store i64 %95, i64* %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @HEX, align 4
  %103 = call i64 @asc_ul(i32 %101, i32 4, i32 %102)
  store i64 %103, i64* %8, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @HEX, align 4
  %108 = call i64 @asc_ul(i32 %106, i32 4, i32 %107)
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i8* @TODEV(i64 %109, i64 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  store i8* %111, i8** %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @HEX, align 4
  %119 = call i64 @asc_ul(i32 %117, i32 4, i32 %118)
  store i64 %119, i64* %8, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HEX, align 4
  %124 = call i64 @asc_ul(i32 %122, i32 4, i32 %123)
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i8* @TODEV(i64 %125, i64 %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @HEX, align 4
  %135 = call i64 @asc_ul(i32 %133, i32 4, i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 5
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @HEX, align 4
  %142 = call i64 @asc_ul(i32 %140, i32 4, i32 %141)
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %145, label %146

145:                                              ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %214

146:                                              ; preds = %24
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @rd_nm(%struct.TYPE_10__* %151, i32 %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  store i32 -1, i32* %3, align 4
  br label %214

156:                                              ; preds = %146
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 52, %158
  %160 = trunc i64 %159 to i32
  %161 = call i64 @VCPIO_PAD(i32 %160)
  %162 = inttoptr i64 %161 to i8*
  %163 = call i64 @rd_skip(i8* %162)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store i32 -1, i32* %3, align 4
  br label %214

166:                                              ; preds = %156
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @C_IFMT, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @C_ISLNK, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %166
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %175, %166
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 4
  store i64 0, i64* %183, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  store i8 0, i8* %187, align 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @VCPIO_PAD(i32 %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %196 = call i32 @com_rd(%struct.TYPE_10__* %195)
  store i32 %196, i32* %3, align 4
  br label %214

197:                                              ; preds = %175
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = call i64 @rd_ln_nm(%struct.TYPE_10__* %198)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %197
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @VCPIO_PAD(i32 %205)
  %207 = inttoptr i64 %206 to i8*
  %208 = call i64 @rd_skip(i8* %207)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %201, %197
  store i32 -1, i32* %3, align 4
  br label %214

211:                                              ; preds = %201
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = call i32 @com_rd(%struct.TYPE_10__* %212)
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %211, %210, %181, %165, %155, %145, %22, %16
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i64 @crc_id(i8*, i32) #1

declare dso_local i64 @vcpio_id(i8*, i32) #1

declare dso_local i64 @asc_ul(i32, i32, i32) #1

declare dso_local i64 @asc_uqd(i32, i32, i32) #1

declare dso_local i8* @TODEV(i64, i64) #1

declare dso_local i64 @rd_nm(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @rd_skip(i8*) #1

declare dso_local i64 @VCPIO_PAD(i32) #1

declare dso_local i32 @com_rd(%struct.TYPE_10__*) #1

declare dso_local i64 @rd_ln_nm(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
