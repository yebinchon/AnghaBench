; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_insert_expr_in_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_insert_expr_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32, %struct.expr**, i32 }
%struct.expr = type { %struct.occr*, %struct.occr*, %struct.expr*, i64, i8* }
%struct.occr = type { i8*, i64, %struct.occr* }

@bytes_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, %struct.hash_table*)* @insert_expr_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_expr_in_table(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, %struct.hash_table* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hash_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.expr*, align 8
  %17 = alloca %struct.expr*, align 8
  %18 = alloca %struct.occr*, align 8
  %19 = alloca %struct.occr*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.hash_table* %5, %struct.hash_table** %12, align 8
  store %struct.expr* null, %struct.expr** %17, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %23 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @hash_expr(i8* %20, i32 %21, i32* %14, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %186

29:                                               ; preds = %6
  %30 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %31 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %30, i32 0, i32 1
  %32 = load %struct.expr**, %struct.expr*** %31, align 8
  %33 = load i32, i32* %15, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.expr*, %struct.expr** %32, i64 %34
  %36 = load %struct.expr*, %struct.expr** %35, align 8
  store %struct.expr* %36, %struct.expr** %16, align 8
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %49, %29
  %38 = load %struct.expr*, %struct.expr** %16, align 8
  %39 = icmp ne %struct.expr* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.expr*, %struct.expr** %16, align 8
  %42 = getelementptr inbounds %struct.expr, %struct.expr* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @expr_equiv_p(i8* %43, i8* %44)
  store i32 %45, i32* %13, align 4
  %46 = icmp eq i32 0, %45
  br label %47

47:                                               ; preds = %40, %37
  %48 = phi i1 [ false, %37 ], [ %46, %40 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = load %struct.expr*, %struct.expr** %16, align 8
  store %struct.expr* %50, %struct.expr** %17, align 8
  %51 = load %struct.expr*, %struct.expr** %16, align 8
  %52 = getelementptr inbounds %struct.expr, %struct.expr* %51, i32 0, i32 2
  %53 = load %struct.expr*, %struct.expr** %52, align 8
  store %struct.expr* %53, %struct.expr** %16, align 8
  br label %37

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %101, label %57

57:                                               ; preds = %54
  %58 = call i8* @gcse_alloc(i32 40)
  %59 = bitcast i8* %58 to %struct.expr*
  store %struct.expr* %59, %struct.expr** %16, align 8
  %60 = load i32, i32* @bytes_used, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 40
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* @bytes_used, align 4
  %64 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %64, i32 0, i32 1
  %66 = load %struct.expr**, %struct.expr*** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.expr*, %struct.expr** %66, i64 %68
  %70 = load %struct.expr*, %struct.expr** %69, align 8
  %71 = icmp eq %struct.expr* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load %struct.expr*, %struct.expr** %16, align 8
  %74 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %75 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %74, i32 0, i32 1
  %76 = load %struct.expr**, %struct.expr*** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.expr*, %struct.expr** %76, i64 %78
  store %struct.expr* %73, %struct.expr** %79, align 8
  br label %84

80:                                               ; preds = %57
  %81 = load %struct.expr*, %struct.expr** %16, align 8
  %82 = load %struct.expr*, %struct.expr** %17, align 8
  %83 = getelementptr inbounds %struct.expr, %struct.expr* %82, i32 0, i32 2
  store %struct.expr* %81, %struct.expr** %83, align 8
  br label %84

84:                                               ; preds = %80, %72
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.expr*, %struct.expr** %16, align 8
  %87 = getelementptr inbounds %struct.expr, %struct.expr* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %89 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = sext i32 %90 to i64
  %93 = load %struct.expr*, %struct.expr** %16, align 8
  %94 = getelementptr inbounds %struct.expr, %struct.expr* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load %struct.expr*, %struct.expr** %16, align 8
  %96 = getelementptr inbounds %struct.expr, %struct.expr* %95, i32 0, i32 2
  store %struct.expr* null, %struct.expr** %96, align 8
  %97 = load %struct.expr*, %struct.expr** %16, align 8
  %98 = getelementptr inbounds %struct.expr, %struct.expr* %97, i32 0, i32 1
  store %struct.occr* null, %struct.occr** %98, align 8
  %99 = load %struct.expr*, %struct.expr** %16, align 8
  %100 = getelementptr inbounds %struct.expr, %struct.expr* %99, i32 0, i32 0
  store %struct.occr* null, %struct.occr** %100, align 8
  br label %101

101:                                              ; preds = %84, %54
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %101
  %105 = load %struct.expr*, %struct.expr** %16, align 8
  %106 = getelementptr inbounds %struct.expr, %struct.expr* %105, i32 0, i32 1
  %107 = load %struct.occr*, %struct.occr** %106, align 8
  store %struct.occr* %107, %struct.occr** %18, align 8
  %108 = load %struct.occr*, %struct.occr** %18, align 8
  %109 = icmp ne %struct.occr* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.occr*, %struct.occr** %18, align 8
  %112 = getelementptr inbounds %struct.occr, %struct.occr* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @BLOCK_NUM(i8* %113)
  %115 = load i8*, i8** %9, align 8
  %116 = call i64 @BLOCK_NUM(i8* %115)
  %117 = icmp ne i64 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store %struct.occr* null, %struct.occr** %18, align 8
  br label %119

119:                                              ; preds = %118, %110, %104
  %120 = load %struct.occr*, %struct.occr** %18, align 8
  %121 = icmp ne %struct.occr* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %143

123:                                              ; preds = %119
  %124 = call i8* @gcse_alloc(i32 24)
  %125 = bitcast i8* %124 to %struct.occr*
  store %struct.occr* %125, %struct.occr** %18, align 8
  %126 = load i32, i32* @bytes_used, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %127, 24
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* @bytes_used, align 4
  %130 = load i8*, i8** %9, align 8
  %131 = load %struct.occr*, %struct.occr** %18, align 8
  %132 = getelementptr inbounds %struct.occr, %struct.occr* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.expr*, %struct.expr** %16, align 8
  %134 = getelementptr inbounds %struct.expr, %struct.expr* %133, i32 0, i32 1
  %135 = load %struct.occr*, %struct.occr** %134, align 8
  %136 = load %struct.occr*, %struct.occr** %18, align 8
  %137 = getelementptr inbounds %struct.occr, %struct.occr* %136, i32 0, i32 2
  store %struct.occr* %135, %struct.occr** %137, align 8
  %138 = load %struct.occr*, %struct.occr** %18, align 8
  %139 = getelementptr inbounds %struct.occr, %struct.occr* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.occr*, %struct.occr** %18, align 8
  %141 = load %struct.expr*, %struct.expr** %16, align 8
  %142 = getelementptr inbounds %struct.expr, %struct.expr* %141, i32 0, i32 1
  store %struct.occr* %140, %struct.occr** %142, align 8
  br label %143

143:                                              ; preds = %123, %122
  br label %144

144:                                              ; preds = %143, %101
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %144
  %148 = load %struct.expr*, %struct.expr** %16, align 8
  %149 = getelementptr inbounds %struct.expr, %struct.expr* %148, i32 0, i32 0
  %150 = load %struct.occr*, %struct.occr** %149, align 8
  store %struct.occr* %150, %struct.occr** %19, align 8
  %151 = load %struct.occr*, %struct.occr** %19, align 8
  %152 = icmp ne %struct.occr* %151, null
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load %struct.occr*, %struct.occr** %19, align 8
  %155 = getelementptr inbounds %struct.occr, %struct.occr* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @BLOCK_NUM(i8* %156)
  %158 = load i8*, i8** %9, align 8
  %159 = call i64 @BLOCK_NUM(i8* %158)
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = load i8*, i8** %9, align 8
  %163 = load %struct.occr*, %struct.occr** %19, align 8
  %164 = getelementptr inbounds %struct.occr, %struct.occr* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  br label %185

165:                                              ; preds = %153, %147
  %166 = call i8* @gcse_alloc(i32 24)
  %167 = bitcast i8* %166 to %struct.occr*
  store %struct.occr* %167, %struct.occr** %19, align 8
  %168 = load i32, i32* @bytes_used, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 %169, 24
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* @bytes_used, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = load %struct.occr*, %struct.occr** %19, align 8
  %174 = getelementptr inbounds %struct.occr, %struct.occr* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load %struct.expr*, %struct.expr** %16, align 8
  %176 = getelementptr inbounds %struct.expr, %struct.expr* %175, i32 0, i32 0
  %177 = load %struct.occr*, %struct.occr** %176, align 8
  %178 = load %struct.occr*, %struct.occr** %19, align 8
  %179 = getelementptr inbounds %struct.occr, %struct.occr* %178, i32 0, i32 2
  store %struct.occr* %177, %struct.occr** %179, align 8
  %180 = load %struct.occr*, %struct.occr** %19, align 8
  %181 = getelementptr inbounds %struct.occr, %struct.occr* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load %struct.occr*, %struct.occr** %19, align 8
  %183 = load %struct.expr*, %struct.expr** %16, align 8
  %184 = getelementptr inbounds %struct.expr, %struct.expr* %183, i32 0, i32 0
  store %struct.occr* %182, %struct.occr** %184, align 8
  br label %185

185:                                              ; preds = %165, %161
  br label %186

186:                                              ; preds = %28, %185, %144
  ret void
}

declare dso_local i32 @hash_expr(i8*, i32, i32*, i32) #1

declare dso_local i32 @expr_equiv_p(i8*, i8*) #1

declare dso_local i8* @gcse_alloc(i32) #1

declare dso_local i64 @BLOCK_NUM(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
