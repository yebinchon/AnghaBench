; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_objalloc.c_objalloc_free_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_objalloc.c_objalloc_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objalloc = type { i8*, i32, i8* }
%struct.objalloc_chunk = type { i8*, %struct.objalloc_chunk* }

@CHUNK_SIZE = common dso_local global i32 0, align 4
@CHUNK_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @objalloc_free_block(%struct.objalloc* %0, i8* %1) #0 {
  %3 = alloca %struct.objalloc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.objalloc_chunk*, align 8
  %6 = alloca %struct.objalloc_chunk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.objalloc_chunk*, align 8
  %9 = alloca %struct.objalloc_chunk*, align 8
  %10 = alloca %struct.objalloc_chunk*, align 8
  %11 = alloca %struct.objalloc_chunk*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.objalloc_chunk*, align 8
  store %struct.objalloc* %0, %struct.objalloc** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %7, align 8
  store %struct.objalloc_chunk* null, %struct.objalloc_chunk** %6, align 8
  %15 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %16 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %18, %struct.objalloc_chunk** %5, align 8
  br label %19

19:                                               ; preds = %54, %2
  %20 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %21 = icmp ne %struct.objalloc_chunk* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %24 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %30 = bitcast %struct.objalloc_chunk* %29 to i8*
  %31 = icmp ugt i8* %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %35 = bitcast %struct.objalloc_chunk* %34 to i8*
  %36 = load i32, i32* @CHUNK_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = icmp ult i8* %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %58

41:                                               ; preds = %32, %27
  %42 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  store %struct.objalloc_chunk* %42, %struct.objalloc_chunk** %6, align 8
  br label %53

43:                                               ; preds = %22
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %46 = bitcast %struct.objalloc_chunk* %45 to i8*
  %47 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = icmp eq i8* %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %58

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %56 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %55, i32 0, i32 1
  %57 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %56, align 8
  store %struct.objalloc_chunk* %57, %struct.objalloc_chunk** %5, align 8
  br label %19

58:                                               ; preds = %51, %40, %19
  %59 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %60 = icmp eq %struct.objalloc_chunk* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %58
  %64 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %65 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %134

68:                                               ; preds = %63
  store %struct.objalloc_chunk* null, %struct.objalloc_chunk** %9, align 8
  %69 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %70 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast i8* %71 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %72, %struct.objalloc_chunk** %8, align 8
  br label %73

73:                                               ; preds = %107, %68
  %74 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %75 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %76 = icmp ne %struct.objalloc_chunk* %74, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %73
  %78 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %79 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %78, i32 0, i32 1
  %80 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %79, align 8
  store %struct.objalloc_chunk* %80, %struct.objalloc_chunk** %10, align 8
  %81 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %6, align 8
  %82 = icmp ne %struct.objalloc_chunk* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %6, align 8
  %85 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %86 = icmp eq %struct.objalloc_chunk* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store %struct.objalloc_chunk* null, %struct.objalloc_chunk** %6, align 8
  br label %88

88:                                               ; preds = %87, %83
  %89 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %90 = call i32 @free(%struct.objalloc_chunk* %89)
  br label %107

91:                                               ; preds = %77
  %92 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %93 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = icmp ugt i8* %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  %99 = call i32 @free(%struct.objalloc_chunk* %98)
  br label %106

100:                                              ; preds = %91
  %101 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %9, align 8
  %102 = icmp eq %struct.objalloc_chunk* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %8, align 8
  store %struct.objalloc_chunk* %104, %struct.objalloc_chunk** %9, align 8
  br label %105

105:                                              ; preds = %103, %100
  br label %106

106:                                              ; preds = %105, %97
  br label %107

107:                                              ; preds = %106, %88
  %108 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %10, align 8
  store %struct.objalloc_chunk* %108, %struct.objalloc_chunk** %8, align 8
  br label %73

109:                                              ; preds = %73
  %110 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %9, align 8
  %111 = icmp eq %struct.objalloc_chunk* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  store %struct.objalloc_chunk* %113, %struct.objalloc_chunk** %9, align 8
  br label %114

114:                                              ; preds = %112, %109
  %115 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %9, align 8
  %116 = bitcast %struct.objalloc_chunk* %115 to i8*
  %117 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %118 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %121 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %123 = bitcast %struct.objalloc_chunk* %122 to i8*
  %124 = load i32, i32* @CHUNK_SIZE, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8*, i8** %7, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %133 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  br label %186

134:                                              ; preds = %63
  %135 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %136 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %12, align 8
  %138 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %139 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %138, i32 0, i32 1
  %140 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %139, align 8
  store %struct.objalloc_chunk* %140, %struct.objalloc_chunk** %5, align 8
  %141 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %142 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = bitcast i8* %143 to %struct.objalloc_chunk*
  store %struct.objalloc_chunk* %144, %struct.objalloc_chunk** %11, align 8
  br label %145

145:                                              ; preds = %149, %134
  %146 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %11, align 8
  %147 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %148 = icmp ne %struct.objalloc_chunk* %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %11, align 8
  %151 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %150, i32 0, i32 1
  %152 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %151, align 8
  store %struct.objalloc_chunk* %152, %struct.objalloc_chunk** %13, align 8
  %153 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %11, align 8
  %154 = call i32 @free(%struct.objalloc_chunk* %153)
  %155 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %13, align 8
  store %struct.objalloc_chunk* %155, %struct.objalloc_chunk** %11, align 8
  br label %145

156:                                              ; preds = %145
  %157 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %158 = bitcast %struct.objalloc_chunk* %157 to i8*
  %159 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %160 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %166, %156
  %162 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %163 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %168 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %167, i32 0, i32 1
  %169 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %168, align 8
  store %struct.objalloc_chunk* %169, %struct.objalloc_chunk** %5, align 8
  br label %161

170:                                              ; preds = %161
  %171 = load i8*, i8** %12, align 8
  %172 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %173 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %5, align 8
  %175 = bitcast %struct.objalloc_chunk* %174 to i8*
  %176 = load i32, i32* @CHUNK_SIZE, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8*, i8** %12, align 8
  %180 = ptrtoint i8* %178 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = trunc i64 %182 to i32
  %184 = load %struct.objalloc*, %struct.objalloc** %3, align 8
  %185 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %170, %114
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @free(%struct.objalloc_chunk*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
