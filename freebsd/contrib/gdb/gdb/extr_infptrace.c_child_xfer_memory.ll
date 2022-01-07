; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infptrace.c_child_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infptrace.c_child_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }
%struct.cleanup = type { i32 }

@GDB_MAX_ALLOCA = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@PT_READ_I = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@PT_WRITE_D = common dso_local global i32 0, align 4
@PT_WRITE_I = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@PIOD_READ_D = common dso_local global i32 0, align 4
@PIOD_WRITE_D = common dso_local global i32 0, align 4
@PT_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @child_xfer_memory(i32 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mem_attrib*, align 8
  %13 = alloca %struct.target_ops*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.cleanup*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %12, align 8
  store %struct.target_ops* %5, %struct.target_ops** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, -4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* %15, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = sub i64 %28, 1
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %17, align 4
  store %struct.cleanup* null, %struct.cleanup** %19, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @GDB_MAX_ALLOCA, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %6
  %40 = load i32, i32* %17, align 4
  %41 = call i64 @alloca(i32 %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %18, align 8
  br label %50

43:                                               ; preds = %6
  %44 = load i32, i32* %17, align 4
  %45 = call i64 @xmalloc(i32 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %18, align 8
  %47 = load i32, i32* @xfree, align 4
  %48 = load i32*, i32** %18, align 8
  %49 = call %struct.cleanup* @make_cleanup(i32 %47, i32* %48)
  store %struct.cleanup* %49, %struct.cleanup** %19, align 8
  br label %50

50:                                               ; preds = %43, %39
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %140

53:                                               ; preds = %50
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %68

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @PT_READ_I, align 4
  %62 = load i32, i32* @inferior_ptid, align 4
  %63 = call i32 @PIDGET(i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @ptrace(i32 %61, i32 %63, i32 %64, i32 0)
  %66 = load i32*, i32** %18, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %57
  %69 = load i32, i32* %16, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32, i32* @PT_READ_I, align 4
  %73 = load i32, i32* @inferior_ptid, align 4
  %74 = call i32 @PIDGET(i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = load i32, i32* %16, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = add i64 %76, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ptrace(i32 %72, i32 %74, i32 %82, i32 0)
  %84 = load i32*, i32** %18, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %71, %68
  %90 = load i32*, i32** %18, align 8
  %91 = bitcast i32* %90 to i8*
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = and i64 %93, 3
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @memcpy(i8* %95, i8* %96, i32 %97)
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %132, %89
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %99
  store i64 0, i64* @errno, align 8
  %104 = load i32, i32* @PT_WRITE_D, align 4
  %105 = load i32, i32* @inferior_ptid, align 4
  %106 = call i32 @PIDGET(i32 %105)
  %107 = load i32, i32* %15, align 4
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ptrace(i32 %104, i32 %106, i32 %107, i32 %112)
  %114 = load i64, i64* @errno, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %103
  store i64 0, i64* @errno, align 8
  %117 = load i32, i32* @PT_WRITE_I, align 4
  %118 = load i32, i32* @inferior_ptid, align 4
  %119 = call i32 @PIDGET(i32 %118)
  %120 = load i32, i32* %15, align 4
  %121 = load i32*, i32** %18, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ptrace(i32 %117, i32 %119, i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %116, %103
  %128 = load i64, i64* @errno, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %185

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 %136, 4
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %15, align 4
  br label %99

139:                                              ; preds = %99
  br label %177

140:                                              ; preds = %50
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %160, %140
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %141
  store i64 0, i64* @errno, align 8
  %146 = load i32, i32* @PT_READ_I, align 4
  %147 = load i32, i32* @inferior_ptid, align 4
  %148 = call i32 @PIDGET(i32 %147)
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @ptrace(i32 %146, i32 %148, i32 %149, i32 0)
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  %155 = load i64, i64* @errno, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %145
  store i32 0, i32* %7, align 4
  br label %185

158:                                              ; preds = %145
  %159 = load i32, i32* @QUIT, align 4
  br label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, 4
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %15, align 4
  br label %141

167:                                              ; preds = %141
  %168 = load i8*, i8** %9, align 8
  %169 = load i32*, i32** %18, align 8
  %170 = bitcast i32* %169 to i8*
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = and i64 %172, 3
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @memcpy(i8* %168, i8* %174, i32 %175)
  br label %177

177:                                              ; preds = %167, %139
  %178 = load %struct.cleanup*, %struct.cleanup** %19, align 8
  %179 = icmp ne %struct.cleanup* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.cleanup*, %struct.cleanup** %19, align 8
  %182 = call i32 @do_cleanups(%struct.cleanup* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %183, %157, %130
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
