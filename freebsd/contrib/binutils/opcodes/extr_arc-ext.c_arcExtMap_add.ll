; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-ext.c_arcExtMap_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-ext.c_arcExtMap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i8**, %struct.ExtAuxRegister*, %struct.ExtInstruction** }
%struct.ExtAuxRegister = type { i8*, i8, %struct.ExtAuxRegister* }
%struct.ExtInstruction = type { i8, i8* }

@arc_extension_map = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arcExtMap_add(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ExtInstruction*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ExtAuxRegister*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  %18 = call i32 (...) @cleanup_ext_map()
  br label %19

19:                                               ; preds = %189, %2
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = icmp ult i8* %23, %26
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %197

30:                                               ; preds = %28
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %198

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  switch i32 %41, label %188 [
    i32 128, label %42
    i32 129, label %94
    i32 130, label %117
    i32 131, label %140
  ]

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %8, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %9, align 1
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %51, 5
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i64 @xmalloc(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %10, align 8
  %58 = call i64 @xmalloc(i32 16)
  %59 = inttoptr i64 %58 to %struct.ExtInstruction*
  store %struct.ExtInstruction* %59, %struct.ExtInstruction** %11, align 8
  %60 = load i8, i8* %8, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %70

63:                                               ; preds = %42
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 15, %65
  %67 = sub nsw i32 %66, 9
  %68 = add nsw i32 %67, 1
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %8, align 1
  br label %75

70:                                               ; preds = %42
  %71 = load i8, i8* %8, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 16
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %8, align 1
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = load i8, i8* %77, align 1
  %79 = load %struct.ExtInstruction*, %struct.ExtInstruction** %11, align 8
  %80 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %79, i32 0, i32 0
  store i8 %78, i8* %80, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 5
  %84 = call i32 @strcpy(i8* %81, i8* %83)
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct.ExtInstruction*, %struct.ExtInstruction** %11, align 8
  %87 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ExtInstruction*, %struct.ExtInstruction** %11, align 8
  %89 = load %struct.ExtInstruction**, %struct.ExtInstruction*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 3), align 8
  %90 = load i8, i8* %8, align 1
  %91 = sext i8 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ExtInstruction*, %struct.ExtInstruction** %89, i64 %92
  store %struct.ExtInstruction* %88, %struct.ExtInstruction** %93, align 8
  br label %189

94:                                               ; preds = %37
  %95 = load i8*, i8** %7, align 8
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = sub nsw i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = call i64 @xmalloc(i32 %101)
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %12, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  %107 = call i32 @strcpy(i8* %104, i8* %106)
  %108 = load i8*, i8** %12, align 8
  %109 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 0), align 8
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %113, 32
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %109, i64 %115
  store i8* %108, i8** %116, align 8
  br label %189

117:                                              ; preds = %37
  %118 = load i8*, i8** %7, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = sub nsw i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 1
  %124 = trunc i64 %123 to i32
  %125 = call i64 @xmalloc(i32 %124)
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %13, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 3
  %130 = call i32 @strcpy(i8* %127, i8* %129)
  %131 = load i8*, i8** %13, align 8
  %132 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 1), align 8
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 %136, 16
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %132, i64 %138
  store i8* %131, i8** %139, align 8
  br label %189

140:                                              ; preds = %37
  %141 = call i64 @malloc(i32 24)
  %142 = inttoptr i64 %141 to %struct.ExtAuxRegister*
  store %struct.ExtAuxRegister* %142, %struct.ExtAuxRegister** %14, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = sub nsw i32 %145, 6
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 1
  %149 = trunc i64 %148 to i32
  %150 = call i64 @xmalloc(i32 %149)
  %151 = inttoptr i64 %150 to i8*
  store i8* %151, i8** %15, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 6
  %155 = call i32 @strcpy(i8* %152, i8* %154)
  %156 = load i8*, i8** %15, align 8
  %157 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %14, align 8
  %158 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = shl i32 %162, 24
  %164 = load i8*, i8** %7, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 3
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, 16
  %169 = or i32 %163, %168
  %170 = load i8*, i8** %7, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 4
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = shl i32 %173, 8
  %175 = or i32 %169, %174
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 5
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %175, %179
  %181 = trunc i32 %180 to i8
  %182 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %14, align 8
  %183 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %182, i32 0, i32 1
  store i8 %181, i8* %183, align 8
  %184 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 2), align 8
  %185 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %14, align 8
  %186 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %185, i32 0, i32 2
  store %struct.ExtAuxRegister* %184, %struct.ExtAuxRegister** %186, align 8
  %187 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %14, align 8
  store %struct.ExtAuxRegister* %187, %struct.ExtAuxRegister** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 2), align 8
  br label %189

188:                                              ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %198

189:                                              ; preds = %140, %117, %94, %75
  %190 = load i8*, i8** %7, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = load i8*, i8** %7, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %7, align 8
  br label %19

197:                                              ; preds = %28
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %188, %36
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @cleanup_ext_map(...) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
